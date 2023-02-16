class ElectionPoll {
    var person: WattPerson?
}
class WattPerson {
    var name = "Tosif"
}
let electionPoll = ElectionPoll()
//let takeName = electionPoll.person!.name
//this give an error because force unwrape and it contain nil so

if let takeName = electionPoll.person?.name {
    print("Name is: \(takeName)")
} else {
    print("Unable to fatch Name")
}

electionPoll.person = WattPerson()

if let takeName = electionPoll.person?.name {
    print("Name is : \(takeName)")
} else {
    print("Unable to retrive Name")
}

//Multilevel optional chaining
class Person {
    var residence: Residence?
}
class Residence {
    var rooms: [Room] = []
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(index: Int) -> Room {
        get {
            return rooms[index]
        }
        set {
            rooms[index] = newValue
        }
    }
    
    func  printNumberOFRooms() {
        print("Number of Room is: \(numberOfRooms)")
    }
    var address: Address?
    deinit {
        print("Residence deinit call")
    }
}
class Room {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) and \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
    deinit {
        print("deinit Call")
    }
}

var tosif = Person()
if let roomCount = tosif.residence?.numberOfRooms {
    print("total room: \(roomCount)")
} else {
    print("residence are nil so not counted rooms")
}
//noe diectly accesing address class
let someAddress = Address()
someAddress.buildingNumber = "30"
someAddress.street = "iscon"
tosif.residence?.address = someAddress
tosif.residence?.address?.street
//not assining any value to the address class becase residence are nil

//if we assign residence instance and after we give address instance than it will work
tosif.residence = Residence()
tosif.residence?.address = someAddress
tosif.residence?.address?.street

tosif.residence?.address = Address()
tosif.residence?.address?.buildingName

//Calling methods through optional chaining
tosif.residence = nil
if  tosif.residence?.printNumberOFRooms() != nil {
    print("I was possible to call methods")
} else {
    print("It was not possible to call methods")
}
//Accessing subscript through optional chaining

if let firstRoomName = tosif.residence?[0].name {
    print("The first room name is \(firstRoomName)")
} else {
    print("unable to retrive the first room")
}

tosif.residence?[0] = Room(name: "hii")
tosif.residence = Residence()
tosif.residence?.rooms.append(Room(name: "parth"))
tosif.residence?.rooms.append(Room(name: "ruchit"))

if let firstRoomName = tosif.residence?[0].name {
    print("First room Name: \(firstRoomName)")
} else {
    print("No first room are there")
}

//Accesing Subscript of Optional Type
var testGrade = ["parth": [75, 79, 85], "tosif": [78, 81, 85]]
testGrade["parth"]?[1] = 85
testGrade["tosif"]?[0] += 3

testGrade["ruchit"]?[0] = 85
print(testGrade)

//Multiple level of optional chaining
if let street = tosif.residence?.address?.street {
    print(" address is : \(street)")
} else {
    print("not retrive address")
}
tosif.residence?.address = someAddress
if let street = tosif.residence?.address?.street {
    print("street is: \(street)")
} else {
    print("Not retrive address")
}

//Chaining on methods with optional return values

if let building = tosif.residence?.address?.buildingIdentifier() {
    print("building name: \(building)")
}

//if we want more in optional return value
if let building = tosif.residence?.address?.buildingIdentifier()?.hasPrefix("3") {
    print("building number start with: 3")
} else {
    print("not start with 3")
}


