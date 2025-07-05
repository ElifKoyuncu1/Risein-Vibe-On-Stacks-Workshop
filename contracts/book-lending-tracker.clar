;; Book Lending Tracker - Basit Sürüm
;; Kitap kaydı, ödünç verme, iade takibi içerir

(define-map books
  ;; Key: kitap id (uint)
  ;; Value: { owner: principal, title: (string-ascii 100), borrower: (optional principal), note: (optional (string-ascii 256)) }
  uint { owner: principal, title: (string-ascii 100), borrower: (optional principal), note: (optional (string-ascii 256)) }
)

(define-data-var last-book-id uint 0)

(define-public (register-book (title (string-ascii 100)) (note (optional (string-ascii 256))))
  (let (
    (id (+ (var-get last-book-id) u1))
    (sender tx-sender)
  )
    (begin
      (map-insert books id { owner: sender, title: title, borrower: none, note: note })
      (var-set last-book-id id)
      (ok id)
    )
  )
)

(define-public (lend-book (book-id uint) (borrower principal))
  (let (
    (book (map-get? books book-id))
    (sender tx-sender)
  )
    (match book
      book-data
      (if (is-none (get borrower book-data))
        (if (is-eq sender (get owner book-data))
          (begin
            (map-insert books book-id { owner: sender, title: (get title book-data), borrower: (some borrower), note: (get note book-data) })
            (ok true)
          )
          (err u100) ;; Yetkisiz ödünç verme
        )
        (err u101) ;; Zaten ödünç verilmiş
      )
      (err u102) ;; Kitap bulunamadı
    )
  )
)

(define-public (return-book (book-id uint))
  (let (
    (book (map-get? books book-id))
    (sender tx-sender)
  )
    (match book
      book-data
      (if (is-some (get borrower book-data))
        (if (is-eq sender (get borrower book-data))
          (begin
            (map-insert books book-id { owner: (get owner book-data), title: (get title book-data), borrower: none, note: (get note book-data) })
            (ok true)
          )
          (err u103) ;; Yetkisiz iade
        )
        (err u104) ;; Kitap zaten iade edilmiş
      )
      (err u102) ;; Kitap bulunamadı
    )
  )
)

(define-read-only (get-book (book-id uint))
  (map-get? books book-id)
)

(define-read-only (get-last-book-id)
  (var-get last-book-id)
)
