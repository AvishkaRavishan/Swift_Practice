struct person{
  private var age : Int = 0

  var AGE : Int{
    get{
      return age
    }
    set(age){
      if age < 0 || age > 100{
        print("Error")
      }
      else{
        self.age = age
      }
    }
  }
}

var p1 = person()
p1.AGE = 30
print(p1.AGE)

p1.AGE = -30
print(p1.AGE)

p1.AGE = 930
print(p1.AGE)
