struct Student {
    let name: String
    let marks: [Int]
    var average: Double {
        return Double(marks[0]+marks[1]+marks[2]) / Double(marks.count)
    }
}

let studentDataset = [
    Student(name: "John", marks: [85, 90, 80]),
    Student(name: "Alice", marks: [75, 80, 85]),
    Student(name: "Michael", marks: [90, 95, 92])
]

let studentDictionary = Dictionary(uniqueKeysWithValues: studentDataset.map { ($0.name, $0.average) })

for (name, average) in studentDictionary {
    print("Name: \(name), Average Marks: \(average)")
}

