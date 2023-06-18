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

          //enter name
            HStack {
                Text("Name:")
                TextField("Enter name", text: $name)
            }

          //select pet type
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

          //pick DOB
            HStack {
                Text("Birthdate:")
                DatePicker("", selection: $birthdate, displayedComponents: .date)
            }

          //input phone number
            HStack {
                Text("Phone:")
                TextField("Enter phone number", text: $phoneNumber)
                    .keyboardType(.phonePad)
            }
  
          //save butto
            Button("Save Pet") {
                isSaved = true
            }
            

          //Display items
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
