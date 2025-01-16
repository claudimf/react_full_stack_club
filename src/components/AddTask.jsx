import { useState } from "react";

function AddTask({onAddTaskSubmmit}) {
    const [title, setTitle] = useState("");
    const [description, setDescription] = useState("");
    console.log({title, description})
    
    return (
        <div className="space-y-4 p-6 bg-slate-200 rounded-md shadow flex flex-col">
            <input 
                type="text" 
                placeholder="Digite o título da tarefa"
                className="border border-slate-300 outline-stone-400 px-4 py-2 rounded-md"
                onChange={(event) => {setTitle(event.target.value)}}
            />
            <input 
                type="text" 
                placeholder="Digite a descrição da tarefa"
                className="border border-slate-300 outline-stone-400 px-4 py-2 rounded-md"
                onChange={(event) => {setDescription(event.target.value)}}
            />
            <button 
                onClick={() => onAddTaskSubmmit(title, description)}
                className="bg-slate-500 text-white px-4 py-2 rounded-md">
                Adicionar
            </button>
        </div>
    );
}

export default AddTask;