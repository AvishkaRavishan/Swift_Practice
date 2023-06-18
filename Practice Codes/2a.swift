class Child {
  var name: String
  var age: Int
  var mother: String?
  var father: String?

  init(name: String, age: Int, mother: String){
    self.name = name
    self.age = age
    self.mother = mother
  }

  init(name: String, age: Int, father: String){
    self.name = name
    self.age = age
    self.father = father
  }
}

let child1 = Child(name: "Emily", age: 10, mother: "Sarah")
let child2 = Child(name: "Jack", age: 8, father: "Mike")

print(child1.mother)  // Output: Optional("Sarah")
