import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';

function App() {
  const [userData, setUserData] = useState(null);

  const handleConnect = () => {
    showConnect({
      appDetails: {
        name: 'Book Lending Tracker',
        icon: window.location.origin + '/logo.png',
      },
      onFinish: data => {
        setUserData(data);
        console.log('User data:', data);
      },
      onCancel: () => {
        console.log('User cancelled auth');
      },
    });
  };

  return (
    <div>
      <h1>Book Lending Tracker</h1>
      {!userData ? (
        <button onClick={handleConnect}>Connect Wallet</button>
      ) : (
        <div>
          <p>Connected as: {userData?.profile?.username || userData?.profile?.stxAddress}</p>
        </div>
      )}
    </div>
  );
}

export default App;
