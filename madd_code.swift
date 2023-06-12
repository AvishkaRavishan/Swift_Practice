//
//  ContentView.swift
//  Madd_code
//
//  Created by AVISHKA RAVISHAN on 2023-06-09.
//
import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var date = Date()
    @State private var selectedColor = "Red"
    @State private var value = 0
    @State private var speed = 50
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world!")
                .padding()
            
            Button(action: signIn) {
                Text("Sign In")
            }
            
            TextField("User name (email address)", text: $username)
            
            DatePicker("Start Date", selection: $date, displayedComponents: [.date])
            
            Menu("Actions") {
                Button("Duplicate", action: duplicate)
                Button("Rename", action: rename)
                Button("Delete...", action: delete)
            }
            
            Menu("Copy") {
                Button("Copy", action: copy)
                Button("Copy Formatted", action: copyFormatted)
                Button("Copy Library Path", action: copyPath)
            }
            
            Stepper(value: $value, in: 0...10) {
                Text("Current: \(value) in 0...10")
            }
            
//            Slider(value: $speed, in: 0...100, onEditingChanged: { editing in
//                isEditing = editing
//            })
            
            let colors = ["Red", "Green", "Blue", "Yellow"]
            Picker("Color", selection: $selectedColor) {
                ForEach(colors, id: \.self) { color in
                    Text(color)
                }
            }
        }
        .padding()
    }
    
    func signIn() {
        // Handle sign in action
    }
    
    func duplicate() {
        // Handle duplicate action
    }
    
    func rename() {
        // Handle rename action
    }
    
    func delete() {
        // Handle delete action
    }
    
    func copy() {
        // Handle copy action
    }
    
    func copyFormatted() {
        // Handle copy formatted action
    }
    
    func copyPath() {
        // Handle copy library path action
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

////
