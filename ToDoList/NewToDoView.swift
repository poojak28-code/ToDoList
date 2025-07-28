//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Pooja Karthikeyan on 7/28/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack{
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.purple))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            .padding()
            Button {
                addToDo()
                showNewTask = false
            } label: {
                    Text("Save")
            }

        }
    }
    func addToDo(){
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
