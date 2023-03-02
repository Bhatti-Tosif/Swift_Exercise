//•    Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
struct Work {
    var location: String
    var hours: String
    var projects:[String]
    func projectNames() -> [String] {
        var ans: [String] = []
        for project in projects {
            ans.append(project)
        }
        return ans
    }
}
var work = Work(location: "delhi", hours: "4", projects: ["abc", "iHealth"])
work.location = "Delhi"
work.hours = "3"
work.projects = ["abc", "xyz", "ihealth"]
print(work.projectNames())


//•    Create a structure example which demonstrates use of initializer in structures.
struct Company {
    var name: String
    var stack: String
    init(name: String, stack: String) {
        self.name = name
        self.stack = stack
    }
}
var employee1 = Company(name: "tosif", stack: "NativeMobile")
print(employee1)


//•    Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.
struct User {
    var name: String
    var companyName: String
    init() {
        companyName = "Simform"
        name = "harsh"
    }
    init(name: String, companyName: String) {
        self.name = name
        self.companyName = companyName
    }
    
}
var user1 = User()
var user2 = User(name: "parth", companyName: "Simform")
print(user1)
print(user2)


//•    Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//Output: even numbers are: [6, 8, 10, 8, 12]
//Odd numbers are: [1, 3, 5, 9, 7]
struct OddEven {
    var input: [Int]
    init(input: [Int]) {
        self.input = input
    }
    var even: [Int] = []
    var odd: [Int] = []
    mutating func findOddEven() -> ([Int], [Int]) {
        for i in input {
            if i % 2 == 0 {
                even.append(i)
            } else {
                odd.append(i)
            }
        }
        return (odd, even)
    }
}
var array = [10, 20, 30, 40, 50, 60, 35]
var instance = OddEven(input: array)
var result:(od: [Int], ev:[Int]) = instance.findOddEven()
print("Odd is: \(result.od) and even is \(result.ev)")

//•    Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
//Output be like: Name: Joe, Gender: Male, Age: 27
//Name: Harry, Gender: Male, Age: 21

struct Person {
    var name: String
    var age: Int
    var gender: String
}
var joe = Person(name: "Joe", age:27, gender: "Male")
var harry = Person(name: "harry", age: 21, gender: "Male")
var allPerson: [Person] = [joe, harry]
for i in allPerson {
    print(i)
}

//•    Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
struct ReferenceClass {
    var a: String
    init(a: String) {
        self.a = a
    }
}
var exmp1 = ReferenceClass(a: "abc")
exmp1.a = "Hello"
var exmp2 = exmp1
exmp2.a = "Hi"
print(exmp1.a)
print(exmp2.a)
//Both print statement return different value and also if we use let than we can't assign to other value because struct are value type

//•    Try to figure out basic difference between class and structures and give a demo for same.
class Difference {
    var name: String
    var company: String
    var age: Int
    init(name: String, company: String, age: Int) {
        self.name = name
        self.company = company
        self.age = age
    }
    convenience init(name: String, company: String) {
        self.init(name: name, company: company, age: 20)
    }
}
let differ = Difference(name: "tosif", company: "simform")
print(differ.age, differ.company, differ.name)





