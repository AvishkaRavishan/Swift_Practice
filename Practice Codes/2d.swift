let marksCal = {(marks:[Int]) in 
                var sum = 0
               for mark in marks{
                 sum = sum + mark
               }
                 print(sum/marks.count)
               }

marksCal([10,20,30,40,50])
