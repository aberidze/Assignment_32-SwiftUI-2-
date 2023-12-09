//
//  ContentView.swift
//  SwiftUI-Intro2
//
//  Created by Macbook Air 13 on 09.12.23.
//

import SwiftUI

struct TasksView: View {
    
    // MARK: - body
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 30) {
                
                VStack(spacing: 35) {
                
                    HStack {
                    
                        Text("You have 3 tasks to complete")
                            .font(.system(size: 25.0, weight: .semibold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image("RandomPersonProfilePic")
                            .resizable()
                            .frame(width: 44.0, height: 44.0)
                            .scaledToFill()
                            .clipShape(Circle())
                            .overlay(alignment: .bottomTrailing) {
                                Text("5")
                                    .font(.system(size: 9))
                                    .foregroundColor(.white)
                                    .frame(width: 15.0, height: 15.0)
                                    .background(Color(red: 1, green: 0.46, blue: 0.23))
                                    .clipShape(Circle())
                            }
                    }
                    
                    Button("Complete All") {
                        print("Clicked")
                    }
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .font(.system(size: 16.0, weight: .semibold))
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.73, green: 0.51, blue: 0.87), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.87, green: 0.51, blue: 0.69), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0, y: 0.49),
                            endPoint: UnitPoint(x: 1.02, y: 0.73)
                        )
                    )
                    .cornerRadius(8)
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Completed Tasks")
                        .font(.system(size: 22.0))
                        .foregroundColor(.white)
                    
                    ToDoListView()
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 20.0)
        .padding(.top, 56.0)
        .background(Color(red: 2 / 255.0, green: 2 / 255.0, blue: 6 / 255.0))
    }
}
