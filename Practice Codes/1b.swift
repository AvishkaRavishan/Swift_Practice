var count = 0
var avg = 0
var sum = 0
var no = 0
 repeat{
   print("Enter number: ", terminator:"")
   if let input = readLine(){
     if let no = Int(input){
       if no == -999{
         break
       }else{
        sum = sum+no
        count=count+1
       }
     }else{
       print("Not an integer")
     }
   }
 } while no != -999 
avg = sum/count
print(avg)
