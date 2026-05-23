function App() {
    const host = window.location.hostname;
  
    if (host === "htcai.local") {
      return <h1 style={{ textAlign: "center", marginTop: "100px" }}>🔥 HTCAI Workspace</h1>;
    }
  
    if (host === "tecneuralai.local") {
      return <h1 style={{ textAlign: "center", marginTop: "100px" }}>⚡ TecNeuralAI Workspace</h1>;
    }
  
    return (
      <h1 style={{ textAlign: "center", marginTop: "100px" }}>
        Main App Running
      </h1>
    );
  }
  
  export default App;