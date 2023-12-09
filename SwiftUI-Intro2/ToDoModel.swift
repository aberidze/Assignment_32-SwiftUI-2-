//
//  ToDoModel.swift
//  SwiftUI-Intro2
//
//  Created by Macbook Air 13 on 09.12.23.
//

import Foundation

struct ToDo: Identifiable {
    var id = UUID()
    let taskDescription: String
    let deadline: String
    var taskIsDone: Bool = false
}
