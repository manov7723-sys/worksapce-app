function App() {
    const path = window.location.pathname;
  
    if (path.startsWith("/a/htcai")) {
      return <h1 style={{ textAlign: "center", marginTop: "100px" }}>🔥 HTCAI Workspace</h1>;
    }
  
    if (path.startsWith("/a/tecneuralai")) {
      return <h1 style={{ textAlign: "center", marginTop: "100px" }}>⚡ TecNeuralAI Workspace</h1>;
    }
  
    return (
      <h1 style={{ textAlign: "center", marginTop: "100px" }}>
        Main App Running
      </h1>
    );
  }
  
  export default App;