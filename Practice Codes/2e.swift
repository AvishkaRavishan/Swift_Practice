let marksCal = {(marks:[Int]) in 
                  let avg = marks.reduce(0, +)/marks.count
                print(avg)
               }
marksCal([10,20,30,40,50])
