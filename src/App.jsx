import { useState } from "react";


function App() {
  const [message, setMessage] = useState("Olá Docker!");

  return (
    <div>
      <h1>{message}</h1>
      <button 
        onClick={() => {
          setMessage('Fui clicado');
        }}
        >
          Mudar mensagem
      </button>
    </div>
  );
}

export default App;