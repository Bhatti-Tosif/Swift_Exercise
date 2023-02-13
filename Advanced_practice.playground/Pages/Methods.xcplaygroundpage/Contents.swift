class Calculate {
    var count = 0;
    func addition(_ no1: Int, _ no2: Int) -> Int {
        return no1 + no2
    }
    func subtraction(no1: Int, no2: Int) -> Int {
        return no1 - no2
    }
    
}

let calculate = Calculate()
calculate.addition(30, 20)
calculate.subtraction(no1: 40, no2: 20)

//Modifying Value Types from Within Instance Methods

struct User {
    var name: String
    var surname: String
    mutating func changeName(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}
var userofStruct = User(name: "tosif", surname: "bhatti")
userofStruct.changeName(name: "Parth", surname: "solanki")
userofStruct.surname

//Type Methods
struct Animal {
    static var count = 0
    
    static func Lion() {
        print("This is Lion")
    }
    static func Tiger() {
        print("This is TIGER")
    }
    func Elephant() {
        print("This is elephant")
    }
}
Animal.Lion()
Animal.Tiger()
var animal = Animal()
animal.Elephant()
//animal.Lion()

//Subscripts
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let timesTable = TimesTable(multiplier: 4)
timesTable[2]
print("Time tables multiplier is: \(timesTable[5])")

//Subscript options

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * column) + column]
        }
        set {
            grid[(row * column) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 3)
matrix[1, 2] = 34
matrix[1, 1] = 45

print("matrix(1, 2) is : \(matrix[1, 2])")

//Type Subscripts

enum Planet: Int {
    case earth = 1, venus, marse, jupiter, naptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let jupiter = Planet[4]
print(jupiter)
print("Third planet is \(Planet[3])")
