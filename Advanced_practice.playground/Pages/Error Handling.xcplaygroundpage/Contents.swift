
enum VendingMachineError: Error {
    case invalidSelection
    case insuficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.insuficientFunds(coinsNeeded: 5)


enum DivisionError: Error {
    case divideByZero
}

func division(numerator: Int, denominator: Int) throws {
    if denominator == 0 {
        throw DivisionError.divideByZero
    } else {
        print("result: \(numerator / denominator)")
    }
}

do {
    try division(numerator: 10, denominator: 2)
    try division(numerator: 10, denominator: 0)
    print("valid Division")
}
catch DivisionError.divideByZero {
    print("Error: denominator can not be 0")
}

//Disable error handling
try! division(numerator: 10, denominator: 2)


//Swift book Example
struct Item {
    var price: Int
    var count: Int
}
class VendingMachine {
    var inventory = ["Candy Bar": Item(price: 12, count: 7), "Chips": Item(price: 10, count: 4), "Pretzels": Item(price: 7, count: 11)]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insuficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 9
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    //try buyFavoriteSnack(person: "Eve", vendingMachine: vendingMachine)
    print("Success!")
} catch VendingMachineError.invalidSelection {
    print("invalid Selection")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insuficientFunds(let coinsNeeded) {
    print("Insufficient Funds \(coinsNeeded)")
} catch {
    print("unexpected error: \(error)")
}
func nourish(with item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch is VendingMachineError {
        print("Couldn't buy that from the vending machine.")
    }
}

do {
    try nourish(with: "Beet-Flavored Chips")
} catch {
    print("Unexpected non-vending-machine-related error: \(error)")
}

func eat(item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch VendingMachineError.invalidSelection, VendingMachineError.outOfStock {
        print("Invalid selection, out of stock, or not enough money.")
    }
}

//initializer error handaling
struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}

//Converting Error to Optional Values
func someThrowingFunction() throws -> Int {
    return 10
}

let x = try? someThrowingFunction()
let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}

//Defer statement use
var language = ["Swift", "Java", "objective c"]
func removeLastValue() -> String {
    let lastValue = language.last ?? ""
    defer {
        language.removeLast()
    }
    return lastValue
}
let lastValue = removeLastValue()
print("Last value: \(lastValue )")

//multiple defer
func testMultidefer() {
    defer { print("One") }
    defer { print("Two") }
    defer { print("Three") }
    print("End of function")
}
testMultidefer()

//defer don't capture value
func captureTest() {
    var fullName = "parth solanki"
    defer { print(fullName) }
    fullName = "Parth Solanki"
    print(fullName)
}
captureTest()
