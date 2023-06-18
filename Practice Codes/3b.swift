import SwiftUI

struct ContentView: View {
    @State private var basicSalary = ""
    @State private var allowances = ""
    @State private var deductions = ""
    @State private var netSalary = 0.0
    
    var body: some View {
        VStack {
            Text("Salary Calculator")
                .font(.title)
                .padding()
            
            TextField("Basic Salary", text: $basicSalary)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("Allowances", text: $allowances)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("Deductions", text: $deductions)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            Button(action: calculateNetSalary) {
                Text("Calculate")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Net Salary: \(netSalary, specifier: "%.2f")")
                .padding()
        }
        .padding()
    }
    
    private func calculateNetSalary() {
        guard let basicSalaryValue = Double(basicSalary),
              let allowancesValue = Double(allowances),
              let deductionsValue = Double(deductions) else {
            netSalary = 0.0
            return
        }
        
        netSalary = basicSalaryValue + allowancesValue - deductionsValue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
