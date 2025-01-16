import AddTask from "./components/AddTask";
import Tasks from "./components/Tasks";


function App() {
  return (
    <div>
      <h1 className="text-red-500 text-3xl">Gerenciador de tarefas</h1>
      <AddTask />
      <Tasks />
    </div>
  );
}

export default App;