//: Playground - noun: a place where people can play

import UIKit

enum StudentYear: Int {
    case freshman, sophomore, junior, senior
}

struct Student {
    let firstName: String
    let lastName: String
    let id: Int
    let year: StudentYear
    let grade: Int
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.id  = Int(arc4random_uniform(1000))
        self.year = StudentYear(rawValue: Int(arc4random_uniform(4))) ?? .freshman
        self.grade = Int(arc4random_uniform(101))
    }
}

var students: [Student] = [
    Student(firstName: "Sterling", lastName: "Archer"),
    Student(firstName: "Lana", lastName: "Kane"),
    Student(firstName: "Cheryl", lastName: "Tunt"),
    Student(firstName: "Pam", lastName: "Poovey"),
    Student(firstName: "Cyril", lastName: "Figgis"),
    Student(firstName: "Ray", lastName: "Gillette"),
    Student(firstName: "Malory", lastName: "Archer"),
    Student(firstName: "Barry", lastName: "Dillon"),
    Student(firstName: "Ron", lastName: "Cadillac"),
    Student(firstName: "Ross", lastName: "Geller"),
    Student(firstName: "Chandler", lastName: "Bing"),
    Student(firstName: "Rachel", lastName: "Green"),
    Student(firstName: "Joey", lastName: "Tribbiani"),
    Student(firstName: "Monica", lastName: "Geller"),
    Student(firstName: "Phoebe", lastName: "Buffay")
]

// TODO: - Create an array that contains only the freshmen from the student array using the filter function


let freshmen1 = students.filter{
    (Student)in
    return Student.year == StudentYear.freshman
}
for student in freshmen1{
    print("\(student.firstName) is a \(student.year)")
}


// TODO: - Create an array that contains only the full names (first name concatenated with the last name) from the student array using the map function

let studentFirstNames = students.map({$0.firstName})
let studentLastNames = students.map({$0.lastName})

let amountOfStudents = studentFirstNames.count
var i=0

repeat {
    print(studentFirstNames[i] + " " + studentLastNames[i])
    i = i + 1
} while i<amountOfStudents




// TODO: - Return the average grade from all the students using the reduce function divided by the count

let sum = students.reduce(0){
    (result,student) in
    return result + student.grade
}

let findAverage1 = sum / students.count

print(findAverage1)
