struct FixedLength {
    var firstValue: Int
    let  length: Int
}
var rangeOfThree = FixedLength(firstValue: 1, length: 3)
print(rangeOfThree.length)
rangeOfThree.firstValue = 4
//rangeOfThree.length = 4

//Stored Properties of Constant Structure Instances
let rangeofFive = FixedLength(firstValue: 3, length: 4)
print(rangeofFive.firstValue)
//rangeofFive.firstValue = 4

//Lazy stored Properties
class Greet {
    init() {
        print("Greeting initialized")
    }
}
class Person {
    lazy var greet = Greet()
    init(name: String) {
        print("Person name: \(name)")
    }
}

let tosif = Person(name: "tosif")
tosif.greet

//Computed Properties
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rectangle {
    var origin = Point()
    var size =  Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var square = Rectangle(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print(initialSquareCenter)

square.center = Point(x: 20.0, y: 20.0)
print(square.center)
print("square.origin is now at \(square.origin.x) , \(square.origin.y)")


//Read only computed Properties
struct Multiply {
    var number1:Double, number2:Double

    var ans: Double {
        get {                       //without get it can also work
            return number1 * number2
        }
    }
}

var multiply = Multiply(number1: 20, number2: 30)
multiply.number2 = 20
print("Multiplication \(multiply.ans)")

//Propertie Observers

class StepCounter {
    var totalStep = 0 {
        willSet(newStep) {
            print("Set totalStep to \(newStep)")
        }
        didSet {
            if totalStep > oldValue {
                print("Added \(totalStep - oldValue) ")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalStep = 20
stepCounter.totalStep = 30

//Properties Wrapper
@propertyWrapper
struct ValidationUser {
    var userName = "tosif"
    var wrappedValue: String {
        get { return userName }
        set { userName = newValue }
    }
}

struct ValidUser {
    @ValidationUser var userName:String
}

var user = ValidUser()
user.userName = "harsh"
print(user.userName)

@propertyWrapper
struct Capitalized {
    private(set) var projectedValue: Bool
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.lowercased()
            projectedValue = true
        }
    }
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
        self.projectedValue = false
    }
}

struct User {
    @Capitalized var firstName: String
    @Capitalized var lastName: String
}

var user1 = User(firstName: "tosif", lastName: "bhatti")
user1.lastName
user1.lastName = "BHATT"
print(user1.$lastName)

// Type properties
struct typeProperties {
    static var storedName = "Simform"
    static var computedName: String {
        get {
            return "Tosif"
        }
        set {
            storedName = newValue
        }
    }
}
typeProperties.computedName = "bhatti"
print(typeProperties.storedName)

enum CheckStatic {
    static var storedName = "Simform"
    static var computedName: String {
        return "Tosif"
    }
}
CheckStatic.storedName
CheckStatic.computedName

class CheckStaticKey {
    static var storedName = "Simform"
    static var computedName: String {
        return "tosif"
    }
    class var overridebleComputedName: String {
        return "bhatti"
    }
}

class ExtendAbove: CheckStaticKey {
    override class var overridebleComputedName: String {
        return "solanki"
    }
}

CheckStaticKey.computedName
CheckStaticKey.overridebleComputedName
CheckStaticKey.overridebleComputedName
ExtendAbove.overridebleComputedName



