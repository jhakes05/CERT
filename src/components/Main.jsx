import React from 'react';
import IMAGES from '../Images/Images';

const Main = () => {
  return (
    <div>
      <main className="main-container">
        <div>
          <table className="image-container">
            <tr>
              <td><img src={IMAGES.cert1} alt="Cert 1" style={{ maxWidth: '100%', height: 'auto' }} /></td>
              <td><img src={IMAGES.cert2} alt="Cert 2" style={{ maxWidth: '100%', height: 'auto' }} /></td>
              <td><img src={IMAGES.cert3} alt="Cert 3" style={{ maxWidth: '100%', height: 'auto' }} /></td>
            </tr>
          </table>
        </div>
      </main>
    </div>
  );
};

export default Main;
