import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var type = "Dog"
    @State private var petTypes = ["Dog", "Cat", "Bird"]
    @State private var birthdate = Date()
    @State private var isSaved = false
    @State private var phoneNumber = ""
    @State private var isPhoneNumberValid = true
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
      NavigationView {
        VStack {
            
            Text("Pet Details_")
                .font(.title)
                .padding()
            
            HStack {
                Text("Name:")
                TextField("Enter name", text: $name)
            }
            
            HStack {
                Text("Type:")
                LazyHGrid(rows: [GridItem(.fixed(60))], spacing: 10) {
                    ForEach(petTypes, id: \.self) { petType in
                        Button(action: {
                            type = petType
                        }) {
                            Text(petType)
                                .fontWeight(type == petType ? .bold : .regular)
                                .foregroundColor(type == petType ? .white : .primary)
                                .padding()
                                .background(type == petType ? Color.blue : Color.secondary)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            
            HStack {
                Text("Birthdate:")
                DatePicker("", selection: $birthdate, displayedComponents: .date)
            }
            
            HStack {
                Text("Phone:")
                TextField("Enter phone number", text: $phoneNumber)
                    .keyboardType(.phonePad)
//                    .onChange(of: phoneNumber) { newValue in
//                        isPhoneNumberValid = newValue.count <= 10
//                    }
//                    .foregroundColor(isPhoneNumberValid ? .primary : .red)
//            }
//            if !isPhoneNumberValid {
//                Text("Please enter a valid 10-digit phone number.")
//                    .font(.caption)
//                    .foregroundColor(.red)
            }
            
            Button("Save Pet") {
                isSaved = true
            }
            
//            Button(action: {
//                isSaved = true
//                // Perform save action or any other logic here
//                }) {
//                Text("Save Pet")
//            }
            
            
            
            
            
            if isSaved {
                Text("Pet Details:")
                Text("Name: \(name)")
                Text("Type: \(type)")
                Text("Birthdate: \(birthdate, formatter: dateFormatter)")
                Text("Phone: \(phoneNumber)")
            }
        }
        .padding()
        .navigationTitle("Pet Details")
    }
  }
}

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            PetDetailsView()
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
