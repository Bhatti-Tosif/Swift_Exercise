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
