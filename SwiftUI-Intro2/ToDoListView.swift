//
//  ToDoCellView.swift
//  SwiftUI-Intro2
//
//  Created by Macbook Air 13 on 09.12.23.
//

import SwiftUI

struct ToDoListView: View {
    
    // MARK: - Properties
    let todoTasks = [
        ToDo(
            taskDescription: "Mobile App Research",
            deadline: "4 Oct"
        ),
        ToDo(
            taskDescription: "Prepare Wireframe for Main Flow",
            deadline: "4 Oct"
        ),
        ToDo(
            taskDescription: "Prepare Screens",
            deadline: "4 Oct"
        ),
        ToDo(
            taskDescription: "Website Research",
            deadline: "5 Oct"
        ),
        ToDo(
            taskDescription: "Prepare Wireframe for Main Flow",
            deadline: "5 Oct"
        ),
        ToDo(
            taskDescription: "Prepare Screens",
            deadline: "5 Oct"
        )
    ]
    
    let tasksDone = [ToDo]()
    
    
    // MARK: - body
    var body: some View {
        LazyVStack(spacing: 10) {
            ForEach(todoTasks) { task in
                todoCellView
            }
        }
    }
    
    
    // MARK: - Cell View
    private var todoCellView: some View {
        
        let todoTask: ToDo
        
        HStack {
            
            VStack(alignment: .leading, spacing: 5, content: {
                
                Text("Mobile App Research")
                    .font(.system(size: 16.0))
                    .foregroundColor(.white)
                
                HStack(spacing: 7) {
    
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 16.0, height: 16.0)
                        .scaledToFill()
                    
                    Text("4 Oct")
                        .font(.system(size: 14.0))
                }
                .foregroundColor(.white.opacity(0.8))
            })
            
            Spacer()
            
            Image(systemName: "circle")
                .resizable()
                .frame(width: 26.0, height: 26.0)
                .foregroundColor(Color(red: 186 / 255.0, green: 131 / 255.0, blue: 222 / 255.0))
        }
        .padding(.horizontal, 14)
        .frame(height: 80)
        .background(Color(red: 0.12, green: 0.12, blue: 0.12))
        .padding(.leading, 14)
        .background(Color(red: 0.98, green: 0.8, blue: 0.73))
        .cornerRadius(8)
    }
}
