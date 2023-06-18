func InputInt(no : Int) -> Bool{
  guard no>=10 && no<=50 else{
    return false
  }
  return true
}
print("Enter number: ", terminator:"")
if let input = readLine(){
  if let num = Int(input){
    print(InputInt(no : num))
  }else{
    print("not an int")
  }
}
