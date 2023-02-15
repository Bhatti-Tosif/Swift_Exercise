//Initializer
struct Temprature {
    var feranheit: Double
    init() {
        feranheit = 45.0
    }
}
var f = Temprature()
print("The init feranhit \(f.feranheit)")

struct Celcius {
    var tempinCelcius: Double
    init(fromFahrenheit fehranheit: Double)
    {
        tempinCelcius = (fehranheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        tempinCelcius = kelvin - 273.5
    }
}
let boilingPoint = Celcius(fromFahrenheit: 212)
boilingPoint.tempinCelcius
let freezingPoint = Celcius(fromKelvin: 273.5)
freezingPoint.tempinCelcius

//Parameter Name and argument label
struct Color {
    var red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}
let grey = Color(white: 0.5)
grey.green
let megneta = Color(red: 1.0, green: 0.0, blue: 1.0)
megneta.blue

//Optional Properties type
class User {
    var firstName: String
    let middleName: String
    var lastName: String?
    init(firstName: String, middleName: String) {
        self.firstName = firstName
        self.middleName = middleName
    }
    func printName() {
        print("Name: \(firstName) \(middleName) and \(String(describing: lastName))")
    }
}
let changeName = User(firstName: "tosif", middleName: "M")
changeName.printName()
changeName.lastName = "bhatti"
changeName.printName()

//Memberwise Initializers for Structure Types
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2, height: 2)
twoByTwo.width
let zeroByTwo = Size(height: 2)
zeroByTwo.height
zeroByTwo.width


//struct Perason {
//    var x = 1, y = 2
//}
//struct Person2: Perason {
//    var z = 3
//}
//var person2 = Person2()

//initializer Delegation for value type
struct Sizes {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rectangle {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let basicRect = Rectangle() //Simple init call so point is 0, 0
basicRect.origin.y

let originRect = Rectangle(origin: Point(x: 3.0, y: 3.0), size: Size(width: 6.0, height: 6.0))
print("Size is : \(originRect.size.height)")

let centerRect = Rectangle(center: Point(x: 4.0, y: 4.0), size: Size(width: 10.0, height: 10.0))
print(centerRect.origin.x)


//Initializer Inheritance and Overriding
class Vehicle {
    var numberOfWheel = 0
    var description: String {
        return "Wheels : \(numberOfWheel)"
    }
}
let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheel = 5
    }
}
let bicycle = Bicycle()
print("Bicycle: ",bicycle.description)

class Bike: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        //super.init() implicitly call here
    }
    override var description: String {
        return " \(super.description) in a color: \(color)"
    }
}
let bike = Bike(color: "red")
print("Bike : \(bike.description)")


//Designated and Convenience Initializers in Action
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "Unnamed")
    }
}
let nameOfFood = Food()
nameOfFood.name
let nameOfFood2 = Food(name: "Bacon")
nameOfFood2.name

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    //this is overirde as a convienece init from designated init
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneItem = RecipeIngredient()
oneItem.name
oneItem.quantity

let oneBacon = RecipeIngredient(name: "Bacon")
oneBacon.quantity
oneBacon.name

let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
sixEggs.quantity
sixEggs.name

class ShopingList: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) * \(name)"
        output += purchased ? " Yes" : " No"
        return output
    }
}

var shopingItem = [ShopingList(), ShopingList(name: "Bacon"), ShopingList(name: "eggs", quantity: 6)]
shopingItem[0].purchased = true
shopingItem[0].name = "Juice"

for item in shopingItem {
    print(item.description)
}

//MARK: Failable Initializers
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty{ return nil }
        self.species = species
    }
}
let someCreature = Animal(species: "Giraffe")
someCreature?.species

if let giraffe = someCreature {
    print("Creature is: \(giraffe.species)")
}

let anyCreature = Animal(species: "")

if anyCreature == nil {
    print("The anonymous creature")
}

//Failable initializer for enumration

enum TemperatureUnit {
    case kelvin, celcius, fahrenhit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celcius
        case "F":
            self = .fahrenhit
        default:
            return nil
        }
    }
}
let faheranhitUnit = TemperatureUnit(symbol: "F")
if faheranhitUnit != nil {
    print("This is a faheranhit ")
}

let anyUnit = TemperatureUnit(symbol: "X")
if anyUnit == nil {
    print("This return any type value")
}

//failable initializer with raw value
//enum with raw value automatically recive a failable initializer init?(rawvalue:)

enum TempratureU: Character {
case kelvin = "K", celcius = "C", fahrenhit = "F"
}
let fahrenhit = TempratureU(rawValue: "F")
if fahrenhit != nil {
    print("This is fahrenhit unit")
}
let anyU = TempratureU(rawValue: "U")
if anyU == nil {
    print("This type are not declare")
}

class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}
class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name: name)
    }
}
if let twoSock = CartItem(name: "sock", quantity: 2) {
    print("item: \(twoSock.name) quantity: \(twoSock.quantity)")
}
if let zeroItem = CartItem(name: "Shirt", quantity: 0) {
    print("quantity is : \(zeroItem.quantity)")
} else {
    print(" Unable to initialize zero")
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {
    print("Item: \(oneUnnamed.name) quantity: \(oneUnnamed.quantity)")
} else {
    print("No name is given")
}

//failable override
class Document {
    var name: String?
    
    init() { }
    
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}
class AutomaticDocument: Document {
    override init() {
        super.init()
        self.name = "UnName"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "UnName"
        } else {
            self.name = name
        }
    }
}
//use force unwrape to call failable initializer
class UntitileDocument : Document {
    override init() {
        super.init(name: "Untitled")!
    }
}

var document = AutomaticDocument()
document.name
document = AutomaticDocument(name: "")
document.name

var newDocument = UntitileDocument()
newDocument.name

//REQUIRED INITIALIZERS
class SomeClass {
    var name: String
    required init(name: String)  { self.name = name }
}
class SomeSubClass: SomeClass {
    required init(name: String) {
        super.init(name: name)
    }
    
}
let obj = SomeSubClass(name: "tosif")
obj.name

//setting default properties value with a closure or function
class SomeClassA {
    let someProperties: Int =  {
        var ans = 5
        return ans
    }()
}
let object = SomeClassA()
object.someProperties
//initializing using closures
struct Chessboard {
    let boardColors: [Bool] = {
        var temporaryBoard: [Bool] = []
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAt(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}
let board = Chessboard()
print(board.squareIsBlackAt(row: 0, column: 7))

print(board.squareIsBlackAt(row: 7, column: 7))

//DEINITIALIZATION
class Bank {
    static var coinsInbank = 10000
    static func distribute(coins numberofCoinsRequested: Int) -> Int {
        let numberOfVend = min(numberofCoinsRequested, coinsInbank)
        coinsInbank -= numberofCoinsRequested
        return numberOfVend
    }
    static func receive(coins: Int) {
        coinsInbank += coins
    }
}
class Player {
    var coinsInpurse: Int
    init(coins: Int) {
        coinsInpurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInpurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInpurse)
    }
}

var playerOne: Player? = Player(coins: 100)
print("A new player: \(playerOne!.coinsInpurse) coins")
print("In Bank now : \(Bank.coinsInbank)")
playerOne!.win(coins: 2000)
print("Player 1 win 2000 now total : \(playerOne!.coinsInpurse)")
print("The bank has : \(Bank.coinsInbank)")
//now we exit instance
playerOne = nil
print("Playe one no more exist")

print("The bak balance is now : \(Bank.coinsInbank)")
