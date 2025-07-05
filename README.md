# 📚 Book Lending Tracker


---

**Project Name:** Book Lending Tracker  
**Project Description:** A decentralized app to track lending and returning of books or items using Clarity smart contracts on Stacks blockchain. It features notifications and NFT rewards for timely returns.  
**Live Demo URL:** *Coming soon*  
**Repository URL:** 

---

**Technologies Used:**
- Stacks Blockchain
- Clarity Smart Contracts
- Next.js/React
- Clarinet
- GitHub

---

**Key Features:**
- 📖 Track the lending and returning of books/items on-chain  
- 🧾 Dashboard for managing loans  
- 🔔 Notification system for upcoming due dates  
- 🎁 NFT rewards for users who return items on time  

---

**Smart Contracts:**
- `book-lending.clar`: Handles lending logic, return verification, and NFT rewards based on delivery timing

---

## 🧾 Description

**Book Lending Tracker** is a Web3 application developed during the **Rise In x Stacks Blockchain** workshop. It brings a decentralized solution for lending items like books. With features like automatic due date notifications and reward-based incentives (NFTs), it encourages responsible lending behavior while demonstrating real-world use of Clarity smart contracts.

---

## 🛠️ Technology Stack

- **🟣 Stacks Blockchain** – For decentralized ledger and smart contract execution  
- **🧠 Clarity** – The smart contract language used to write the lending logic  
- **⚛️ Next.js / React** – Frontend interface for users to interact with the protocol    
- **🧪 Clarinet** – Local development and testing of Clarity contracts  
- **📂 GitHub** – Version control and collaboration

---

## 🚀 Getting Started

### Prerequisites

- Node.js (v18+ recommended)  
- Clarinet (install via Hiro)  
- Git  
- VS Code or preferred editor

### Installation

```bash
git clone https://github.com/your-username/book-lending-tracker.git
cd book-lending-tracker
npm install
clarinet check
```

### Usage

```bash
npm run dev
```
Then open  http://localhost:3000/ in your browser.

## 📜 Smart Contract Documentation

### `book-lending.clar`

This smart contract handles all core functionalities related to book/item lending, returning, and rewarding users with NFTs.

| Function         | Description                                                              |
|------------------|---------------------------------------------------------------------------|
| `lend-book`      | Starts a new lending transaction with borrower, item ID, and due date     |
| `return-book`    | Marks an item as returned and records the return time                     |
| `reward-user`    | Sends an NFT reward to the borrower if the item was returned on time      |
| `get-loans`      | Returns a list of all active (ongoing) loans                              |
| `only-owner`     | Restricts access to certain functions (e.g., NFT reward logic) to the admin |

> 📌 All logic is implemented in [Clarity](https://docs.stacks.co/docs/write-smart-contracts/clarity-overview), a decidable smart contract language.  
> 🧪 See `/tests/book-lending_test.clar` for unit test coverage.



