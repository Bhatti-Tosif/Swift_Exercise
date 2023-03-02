//•    1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
//Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error.
class Student{
    var stored: String = "Hello"
    private(set) var computed: String {
        get {
            return stored
        }
        set {
            stored = newValue
        }
    }
}
let student1 = Student()
//student1.computed = "Hii"
print(student1.computed)

//•    2)  Create a swift program to demonstrate usage of computed properties using getter and setter.
class DemoOfComputed {
    var obtainMark: Double = 0.0
    var findPercentage: Double {
        get {
            return (obtainMark / 200) * 100
        }
        set {
            obtainMark = newValue
        }
    }
}
let mark = DemoOfComputed()
mark.obtainMark = 170
mark.findPercentage = 200
print(mark.findPercentage)

//•    3)  Create a swift program to show usage of stored properties.
class StoredProperty {
    var stored: String = "Hii" {
        willSet {
            print("Before Change \(stored)")
        }
        didSet {
            print("After change \(stored)")
        }
    }
}
let change = StoredProperty()
change.stored = "Hello"


//•    4)  Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
class PrivateProperty {
    private var stored: String = "Tosif"
    private var computed: String {
        return "Hello " + stored
    }
    func printData() -> String {
        return computed
    }
}
let data = PrivateProperty()
print(data.printData())


//•    5)  Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.
//•    Output: My class is Person and properties are id and name, then create an array of person. And print all elements of that array.

class UserData {
    var name: String
    var id: Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}
var userData: [UserData] = []
var user1 = UserData(name: "tosif", id: 08)
let user2 = UserData(name: "parth", id: 10)
let user3 = UserData(name: "ruchit", id: 15)
userData.append(user1)
userData.append(user2)
userData.append(user3)
for person in userData {
    print("Name: \(person.name) and id: \(person.id)")
}

//•    6)  Create one example of usage of willSet and didSet.
class User {
    var store: String = "tosif" {
        willSet {
            print("Before Change: \(store)")
        }
        didSet {
            print("After Change: \(store)")
        }
    }
}
let user = User()
user.store = "parth"

//•    7)  Create one lazy stored property in a class and show usage of it.
class Firstname {
    var name: String = "tosif"
}
class Fullaname {
    lazy var fullName = Firstname()
    var surname = "bhatti"
}
var full = Fullaname()
full.surname
print(full.fullName.name)


//•    8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
class Person {
    var name: String
    var occupation: String
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
}
class Employee: Person {
    var company: String
    init(name: String, occupation: String, company: String) {
        self.company = company
        super.init(name: name, occupation: occupation)
    }
}
class CollegeStudent: Person {
    var college: String
    init(name: String, occupation: String, college: String) {
        self.college = college
        super.init(name: name, occupation: occupation)
    }
}
var student = CollegeStudent(name: "tosif", occupation: "Study", college: "Changa")
var employee = CollegeStudent(name: "soham", occupation: "developer", college: "Gec")
print("student name: \(student.name) and ocupation: \(student.occupation)")


//•    9)  Create one structure to show usage of mutating function in swift.
struct Mutating {
    var mobile: String
    mutating func changeMobileName(nameOfMobile: String) {
        mobile = nameOfMobile
    }
}
var mutating = Mutating(mobile: "Samsung")
mutating.changeMobileName(nameOfMobile: "Iphone 14")
print(mutating.mobile)


//•    10)  Create one class inheritance demo to show usage of method overriding.
class Override {
    func printData() {
        print("Base class method")
    }
}
class ChildClass: Override {
    override func printData() {
        super.printData()
        print("This is child class methods")
    }
}
let overrideCheck = ChildClass()
overrideCheck.printData()


//•    11)  Create one swift class to show usage of type methods.
class TypeMethod {
    static func showData() {
        print("This method is accesses through class name only")
    }
}
TypeMethod.showData()


//•    12)  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)
class ClassMethodTry {
    class func printClass() {
        print("This is class method that can't override")
    }
    static func printStatic() {
        print("This is static method")
    }
}
class StaticMethod: ClassMethodTry {
    class override func printClass() {
        print("Class override method")
        super.printStatic()
    }
//    override static func printStatic() {
//        print("static override method call")
//    }
}
//Static method can't override
StaticMethod.printClass()


//•    13)  Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.
//•    Output: WeekDays.subscript(day: 1) // will return Sunday Note: Handle invalid input.
class Weekday {
    var dayName = ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]
    subscript(index: Int) -> String {
        get {
            return dayName[index]
        }
        set {
            dayName.append(newValue)
        }
    }
}
let weekday = Weekday()
print(weekday.dayName[1])


//•    14)  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.
class StringCharAccess {
    var name: String
    init(name: String) {
        self.name = name
    }
    subscript(index: Int) -> Character {
        return name[name.index(name.startIndex, offsetBy: index - 1)]
    }
}
var stringToChar = StringCharAccess(name: "Tosif")
print(stringToChar[3])


//•    15)  Create one swift subscript program which takes range as input and returns the string between the ranges.
extension String {
    subscript(range: ClosedRange<Int>) -> String {
        var result = ""
        for i in range {
            result.append(self[self.index(self.startIndex, offsetBy: i - 1)])
        }
        return result
    }
}
var companyData = "Simform"
print(companyData[2...5])


//•    16)  I have one integer array and create one function which takes range as input and returns all elements between the range.
var numberCode: [Int] = [91, 92, 1, 21, 71]
func allRangeCode(numberArray: [Int], range: ClosedRange<Int>) -> [Int] {
    var result: [Int] = []
    for i in range {
        result.append(numberArray[i])
    }
    return result
}
var ans = allRangeCode(numberArray: numberCode, range: 2...4)
print(ans)


//•    17)  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.

class TakeKey {
    var takeDictionary: [Dictionary<Int, String>]
    init(dict: [Dictionary<Int, String>]) {
        takeDictionary = dict
    }
    subscript(key: Int) -> [String] {
        return [String](takeDictionary[takeDictionary.index(takeDictionary.startIndex, offsetBy: key - 1)].values)
    }
}
var array = [[1 : "Tosif"], [2 : "parth"], [3 : "ruchit"]]
var dicArray = TakeKey(dict: array)
dicArray[2]


//•    18)  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.
class BdayBoy {
    var name: String
    var age: Int
    var birthday: String
    init(name: String, age: Int, birthday: String) {
        self.name = name
        self.age = age
        self.birthday = birthday
    }
    func getDetail() {
        print("Name: \(name) age: \(age) birthday: \(birthday)")
    }
}
class Verify {
    var persons: [BdayBoy]
    init(persons: [BdayBoy]) {
        self.persons = persons
    }
    subscript(name: String) -> () {
        for person in persons {
            if person.name == name {
                person.getDetail()
                return
            }
        }
        return
    }
}
let bdayBoy = [BdayBoy(name: "tosif", age: 21, birthday: "July"), BdayBoy(name: "parth", age: 23, birthday: "Oct")]
let findDetail = Verify(persons: bdayBoy)
findDetail["parth"]


//•    19)  Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer
class Song {
    var singer: String
    var composer: String
    init(singer: String, composer: String) {
        self.singer = singer
        self.composer = composer
    }
}
class HipHop: Song {
    var songYear: Int
    init(singer: String, composer: String, songYear: Int) {
        self.songYear = songYear
        super.init(singer: singer, composer: composer)
    }
}
class Classical: Song {
    var year: Int
    init(singer: String, composer: String, year: Int) {
        self.year = year
        super.init(singer: singer, composer: composer)
    }
}
class InstanceClass {
    var classicalEra: Classical
    var hipHopEra: HipHop
    init(classicalSong: Classical, hipSong: HipHop) {
        self.classicalEra = classicalSong
        self.hipHopEra = hipSong
    }
    func printDetail() {
        print("Singer of classical: \(classicalEra.singer) singer of hip: \(hipHopEra.singer)")
    }
}
var oldSong = Classical(singer: "Arijit", composer: "Parth", year: 1990)
var newSong = HipHop(singer: "ruchit", composer: "tosif", songYear: 2023)
var music = InstanceClass(classicalSong: oldSong, hipSong: newSong)
music.printDetail()


//•    20)  Create a swift class with properties which can be read-write outside of class.
class ReadAndWrite {
    var name: String = "tosif"
    var change: String {
        get {
            return name
        }
        set {
            name = newValue
        }
    }
}
var readWeiteObj = ReadAndWrite()
readWeiteObj.change
readWeiteObj.change = "ruchit"
print("Write value: \(readWeiteObj.change)")


