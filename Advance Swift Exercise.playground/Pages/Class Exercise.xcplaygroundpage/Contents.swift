import Foundation
//•    Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
class FirstProblem {
    var firstName: String = "name"
    var lastName: String = "surname"
}
let firstProblemObj = FirstProblem()
firstProblemObj.firstName = "Tosif"
firstProblemObj.lastName = "Bhatti"
print("FullName: \(firstProblemObj.firstName)  \(firstProblemObj.lastName)")

//• Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
class CollegeDetail {
    var name: String
    var college: String
    var department: String
    init(name: String, college: String) {
        self.name = name
        self.college = college
        department = "CE"
    }
    init(name: String, department: String) {
        self.name = name
        self.department = department
        college = "Depstar"
    }
}
let collegeDetail = CollegeDetail(name: "tosif", college: "Depstar")
let department = CollegeDetail(name: "parth", department: "MCA")
print(collegeDetail.department)
collegeDetail.college
department.department
department.name

//•    Create a swift class without initializers and access (write, read) its properties using instance of class.

class ThirdProblem {
    var obtainMark: Double = 180
    var totalMark: Double = 200
    var grade: Double {
        get {
            return Double((obtainMark / totalMark) * 100)
        }
    }
}
let percentage = ThirdProblem()
print(percentage.grade)
percentage.obtainMark = 150
percentage.grade

//•    Create a swift class which is having code to return square of given number and access this code using class instance.

class Square {
    var number: Int
    init(number: Int) {
        self.number = number
    }
    var square: Int {
        get {
            return number * number
        }
    }
}
var squareNumber = Square(number: 20)
print(squareNumber.square)

//•    Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
class University {
    var nameOfCollege: String
    var nameOfPrincipal: String
    init(nameOfCollege: String, nameOfPrincipal: String) {
        self.nameOfCollege = nameOfCollege
        self.nameOfPrincipal = nameOfPrincipal
    }
}
class Student: University {
    var studentName: String
    init(studentName: String, nameOfCollege: String, nameOfPrincipal: String) {
        self.studentName = studentName
        super.init(nameOfCollege: nameOfCollege, nameOfPrincipal: nameOfPrincipal)
    }
}
class Faculty: University {
    var facultyName: String
    init(facultyName: String, nameOfCollege: String, nameOfPrincipal: String) {
        self.facultyName = facultyName
        super.init(nameOfCollege: nameOfCollege, nameOfPrincipal: nameOfPrincipal)
    }
}
let faculty = Faculty(facultyName: "Harsh", nameOfCollege: "Depstar", nameOfPrincipal: "Amit ganatara")
let student = Student(studentName: "Tosif", nameOfCollege: "Depstar", nameOfPrincipal: "Costa")
print(faculty.nameOfCollege)
faculty.nameOfCollege = "Cspit"
print(faculty.nameOfCollege)
print(student.nameOfPrincipal)


//•    Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class FuncWithClass {
    func breakCar(speed: Int) {
        if speed > 50 {
            print("Please press the break")
        }
    }
}
class Break: FuncWithClass {
    override func breakCar(speed: Int) {
        speed < 40 ? print("No need to press break") : super.breakCar(speed: speed)
    }
}
let bike = Break()
bike.breakCar(speed: 60)
bike.breakCar(speed: 30)


//•    Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
//example:  let instance = Example(value: 5)
//    let result = instance.doPower(power: 3)
//then it should return 5's 3 power (125)
class DoPower {
    var upper: Decimal
    init(upper: Decimal) {
        self.upper = upper
    }
    func doPower(power: Int) -> Decimal {
        return pow(upper, power)
    }
}
let instance = DoPower(upper: 5)
let result = instance.doPower(power: 3)
print("Power is:  \(result)")


//•    Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
class Vehicles {
    var wheels: Int
    var isBreak: Bool
    init(wheels: Int, isBreak: Bool) {
        self.wheels = wheels
        self.isBreak = isBreak
    }
}
class Bike: Vehicles {
    var isHandle: Bool
    var sheating: Int
    init(wheels: Int, isBreak: Bool, isHandle: Bool, sheating: Int) {
        self.isHandle = isHandle
        self.sheating = sheating
        super.init(wheels: wheels, isBreak: isBreak)
    }
}
class Car: Vehicles {
    var sheating: Int
    var isAC: Bool
    init(wheels: Int, isBreak: Bool, sheating: Int, isAC: Bool) {
        self.sheating = sheating
        self.isAC = isAC
        super.init(wheels: wheels, isBreak: isBreak)
    }
}
let car = Car(wheels: 4, isBreak: true, sheating: 5, isAC: true)
let Hondabike = Bike(wheels: 2, isBreak: true, isHandle: true, sheating: 2)
car.sheating = 6
car.sheating
print(Hondabike.sheating)


//•    Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
//Person1.greet() // This should print “Hello Joe”
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    func greet() {
        print("Hello \(name)")
    }
}
let parth = Person(name: "Parth")
parth.greet()

//•    Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
//// Consider ‘a’ as string property of example class.
//--> Check these two print outputs and try to find out the reason for that output.
class ReferenceClass {
    var a: String
    init(a: String) {
        self.a = a
    }
}
let exmp1 = ReferenceClass(a: "abc")
exmp1.a = "Hello"
let exmp2 = exmp1
exmp2.a = "Hi"
print(exmp1.a)
print(exmp2.a)
//Both print are same because class in swift are reference types.
