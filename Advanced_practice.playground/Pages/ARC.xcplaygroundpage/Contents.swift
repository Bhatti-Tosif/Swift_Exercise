class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}
var tosif: Person?
var unit4a: Apartment?

tosif = Person(name: "tosif")
unit4a = Apartment(unit: "Uint4A")

tosif?.apartment = unit4a
unit4a?.tenant = tosif

tosif = nil
unit4a = nil

//Weak Refference
class Person2 {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment2?
    deinit { print("\(name) is being deinitialized") }
}
class Apartment2 {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    weak var tenant: Person2?
    deinit {
        print("Apartment2 \(unit) is deinitialized")
    }
}
var parth: Person2?
var unit5A: Apartment2?
parth = Person2(name: "parth")
unit5A = Apartment2(unit: "Unit5A")
parth!.apartment = unit5A
unit5A!.tenant = parth

parth = nil
unit5A = nil

//Unowned reference
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}
var ruchit: Customer?
ruchit = Customer(name: "ruchit")
ruchit!.card = CreditCard(number: 1234_5678_9012_3456, customer: ruchit!)
ruchit = nil

//Strong Reference Cycles for Closures
class HTMLElement {

    let name: String
    let text: String?

    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinitialized")
    }

}
let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"
}
print(heading.asHTML())
