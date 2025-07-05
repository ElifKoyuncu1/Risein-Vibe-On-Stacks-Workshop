
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
=======
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
Then open  http://localhost:3000/   in your browser.

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



>>>>>>> 3bb680d1ca554c4fc4886ecc9dc6f85072e7c683
