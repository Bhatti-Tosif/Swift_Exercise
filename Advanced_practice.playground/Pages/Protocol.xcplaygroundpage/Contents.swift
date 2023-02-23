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
