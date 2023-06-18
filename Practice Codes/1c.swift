func temp(c : Double, k : inout Double, f : inout Double){
  f = (c*9/5) + 32 
  k = c + 273.15
}
var ans1 : Double = 0.0
var ans2 : Double = 0.0
temp(c: 10.0, k:&ans1, f:&ans2)
print("Kelvin \(ans1)")
print("Fahrenheit \(ans2)")




<>





func temp(c: Double, k: inout Double, f: inout Double) {
  f = (c * 9 / 5) + 32
  k = c + 273.15
}

var ans1: Double = 0.0
var ans2: Double = 0.0

// Get user input for the value of c
print("Enter the temperature in Celsius:")
if let input = readLine(), let c = Double(input) {
  temp(c: c, k: &ans1, f: &ans2)
  
  print("Kelvin: \(ans1)")
  print("Fahrenheit: \(ans2)")
} else {
  print("Invalid input.")
}
