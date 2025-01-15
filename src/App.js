import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'; // Import Bootstrap CSS

function App() {
  const [hallTicketNumber, setHallTicketNumber] = useState('');
  const [result, setResult] = useState(null);
  const [error, setError] = useState(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    fetch('http://localhost:3001/student-result', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ hallTicketNumber }),
    })
      .then(response => response.json())
      .then(data => {
        if (data.message) {
          setError(data.message);
          setResult(null);
        } else {
          setResult(data);
          setError(null);
          openResultWindow(data); // Open a new window with the result
        }
      })
      .catch(err => {
        setError('An error occurred');
        setResult(null);
      });
  };

  // Function to open a new window with the result data
  const openResultWindow = (data) => {
    const resultWindow = window.open('', '_blank', 'width=600,height=400');
    resultWindow.document.write(`
      <html>
        <head><title>Student Result</title></head>
        <body>
          <h2>Student Result</h2>
          <p><strong>Name:</strong> ${data.name}</p>
          <p><strong>Age:</strong> ${data.age}</p>
          <p><strong>Grade:</strong> ${data.grade}</p>
          <p><strong>Status:</strong> ${data.status}</p>
        </body>
      </html>
    `);
    resultWindow.document.close();
  };

  return (
    <div className="container mt-5">
      <h1 className="text-center mb-4">Check Student Results</h1>
      <form onSubmit={handleSubmit}>
        <div className="mb-3">
          <label htmlFor="hallTicketNumber" className="form-label">
            Hall Ticket Number:
          </label>
          <input
            type="text"
            className="form-control"
            id="hallTicketNumber"
            value={hallTicketNumber}
            onChange={(e) => setHallTicketNumber(e.target.value)}
            required
          />
        </div>
        <button type="submit" className="btn btn-primary">Submit</button>
      </form>
      
      {error && <p className="text-danger mt-3">{error}</p>}
      
      {result && (
        <div className="mt-4">
          <h2>Result</h2>
          <ul className="list-group">
            <li className="list-group-item">Name: {result.name}</li>
            <li className="list-group-item">Age: {result.age}</li>
            <li className="list-group-item">Grade: {result.grade}</li>
            <li className="list-group-item">Status: {result.status}</li>
          </ul>
        </div>
      )}
    </div>
  );
}

export default App;
