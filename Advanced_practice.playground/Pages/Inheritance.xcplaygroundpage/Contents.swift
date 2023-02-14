//Inheritance
//Base Class
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "My speed is \(currentSpeed)"
    }
    func makeNoise() {
        print("This is a Vehicle Noise")
    }
}
let bike = Vehicle()
print("My bike detail :",bike.description)

//subClass
class BiCycle: Vehicle {
    var hasBasket = false
}

let bicycle = BiCycle()
bicycle.hasBasket = true
print(bicycle.description)
bicycle.hasBasket
bicycle.currentSpeed = 30.0
print(bicycle.currentSpeed)

//multi level inheritance
class Person: BiCycle {
    var numberofPassenger = 0
}

let person = Person()
person.hasBasket
person.currentSpeed = 5.0
person.numberofPassenger = 20
print("Detail : \(person.description)")

//Overriding
class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("Train noise is : Choo Chook")
    }
}

let train = Train()
train.makeNoise()

//Overriding Properties
class Car: Vehicle {
    var gear = 1
    final func totalGear() {
        print("Total 5 gear is there")
    }
    override var description: String {
        get {
            return super.description + " gear is \(gear)"
        }
    }
}
let car = Car()
car.gear = 4
car.currentSpeed = 60.0
print("Car: \(car.description) and \(car.currentSpeed)")

class AutomaticCar: Car {
//    override final func totalGear() {
//        print("Total 4 gear are there")
//    }
    override var currentSpeed: Double {
        willSet {
            currentSpeed = newValue
        }
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 40
print("Automatic: \(automatic.description)")

//final methods, properties and subscript can not override.
