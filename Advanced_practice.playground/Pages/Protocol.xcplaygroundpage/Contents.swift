import Foundation
protocol Greet {
    var name: String {
        get
    }
    func message()
}

class User: Greet {
    var name = "Tosif"
    
    func message() {
        print("Good morning \(name)")
    }
}

var user1 = User()
user1.message()

//Property Requirement
protocol FullyNamed {
    var fullName: String { get }
}
struct Person: FullyNamed {
    var fullName: String
}
let tosif = Person(fullName: "Tosif")
tosif.fullName

class Starship: FullyNamed {
    var prifix: String?
    var name: String
    init(name: String, prifix: String? = nil) {
        self.name = name
        self.prifix = prifix
    }
    var fullName: String {
        return (prifix != nil ? prifix! + " " : "") + name
    }
}
var ncc = Starship(name: "Enterprise", prifix: "USS")
ncc.fullName


//protocol Initializer Requirement
protocol SomeProtocol {
    init(someParameter: Int)
}
class SomeClass: SomeProtocol {
    var no: Int
    required init(someParameter: Int) {
        no = someParameter
    }
}
var name = SomeClass(someParameter: 20)
name.no

//Adding Protocol Conformance with an Extension
protocol AgeClassification {
    var age: Int { get }
    func ageType() -> String
}
class Person1 {
    let firstName: String
    let lastName: String
    var age: Int
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = 10
    }
}
extension Person1: AgeClassification {
    func fullName() -> String {
        return firstName + " " + lastName
    }
    func ageType() -> String {
        switch age {
        case 0...2:
            return "Baby"
        case 2...12:
            return "Child"
        case 12...20:
            return "Teenager"
        case let x where x > 20:
            return "Elder"
        default:
            return "Normal"
        }
    }
}

var parth = Person1(firstName: "Tosif", lastName: "Bhatti")
print(parth.ageType())

//Delegate
struct Cookie {
var size:Int = 5
var hasChocolateChips:Bool = false
}
protocol BakeryDelegate {
func cookieWasBaked(_ cookie: Cookie)
}
class Bakery
{
var delegate:BakeryDelegate?

func makeCookie()
{
var cookie = Cookie()
cookie.size = 6
cookie.hasChocolateChips = true

delegate?.cookieWasBaked(cookie)
}
}

var bakery = Bakery()
bakery.delegate

//Adding Protocol Conformance with an Extension
extension Bakery: BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie) {
        print("hello this is extension")
    }
    
    
}
//Declaring Protocol Adoption with an Extension
protocol TextRepresentable {
    var textualDescription: String { get }
}
struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}
extension Hamster: TextRepresentable {}
let simonTheHamster = Hamster(name: "Tosif")
let somethingTextRepresentable: TextRepresentable = simonTheHamster
print(somethingTextRepresentable.textualDescription)

//Adopting a Protocol Using a Synthesized Implementation
struct Vector3D: Equatable {
    var x = 0.0, y = 0.0, z = 0.0
}

let twoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
if twoThreeFour == anotherTwoThreeFour {
    print("These two vectors are Not same")
}

enum SkillLevel: Comparable {
    case beginner
    case intermediate
    case expert(stars: Int)
}
var levels = [SkillLevel.intermediate, SkillLevel.beginner,
              SkillLevel.expert(stars: 5), SkillLevel.expert(stars: 3)]
for level in levels.sorted() {
    print(level)
}

class Check: Equatable {
    static func == (lhs: Check, rhs: Check) -> Bool {
        return true
    }
    
    var a = 0
}
var obj = Check()
var anotherObj = Check()
if obj == anotherObj {
    print("Same")
}

//Collections of Protocol Types
let thing: [TextRepresentable] = [simonTheHamster, somethingTextRepresentable]

//Protocol Inheritance
protocol InheritingProtocol: TextRepresentable, AgeClassification {
    var greetText: String { get }
}

//Class-Only Protocols
protocol SomeClassOnlyProtocol: AnyObject {
    func printFunc()
}
class ClassOnly: SomeClassOnlyProtocol {
    func printFunc() {
        print("This is only for Class")
    }
}
let classOnlyVar = ClassOnly()
classOnlyVar.printFunc()

//struct StructOnly: SomeClassOnlyProtocol {
////    Non-class type 'StructOnly' cannot conform to class protocol 'SomeClassOnlyProtocol'
//}

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct BdayBoy: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're now \(celebrator.age)!")
}
let birthdayPerson = BdayBoy(name: "Tosif", age: 21)
wishHappyBirthday(to: birthdayPerson)


//Checking for Protocol Conformance
//is as? as!
protocol HasArea {
    var area: Double { get }
}
class Circle: HasArea {
    let pi = 3.1415927
    var radius: Double
    var area: Double { return pi * radius * radius }
    init(radius: Double) { self.radius = radius }
}
class Country: HasArea {
    var area: Double
    init(area: Double) { self.area = area }
}
class Animal {
    var legs: Int
    init(legs: Int) { self.legs = legs }
}
let objects: [AnyObject] = [
    Circle(radius: 2.0),
    Country(area: 243_610),
    Animal(legs: 4)
]
for object in objects {
    if let objectWithArea = object as? HasArea {
        print("Area is \(objectWithArea.area)")
    } else {
        print("In this Class doesn't have an area")
    }
}

//Optional Protocol Requirements
@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
    var name: String { get }
}
class Counter {
    var count = 0
    var dataSource: CounterDataSource?
    func increment() {
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}
let counterObj = Counter()
counterObj.increment()

class ThreeSource: NSObject, CounterDataSource {
    let fixedIncrement = 3
    var name = "Tosif"
}
var counter = Counter()
counter.dataSource = ThreeSource()
for _ in 1...4 {
    counter.increment()
    print(counter.count)
}

//Protocol Extensions
protocol RandomNumberGenerator {
    func random() -> Double
}
extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() > 0.5
    }
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Random number: \(generator.random())")
print("Random Boolean: \(generator.randomBool())")

//Adding Constraints to Protocol Extensions

extension Collection where Element: Equatable {
    func allEqual() -> Bool {
        for element in self {
            if element != self.first {
                return false
            }
        }
        return true
    }
}
let equalNumbers = [100, 100, 100, 100, 100]
let differentNumbers = [100, 100, 200, 100, 200]
print(equalNumbers.allEqual())
print(differentNumbers.allEqual())
