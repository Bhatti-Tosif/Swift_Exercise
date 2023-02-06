struct FirstStruct {
    var firstName = "tosif"
    var lastName = "bhatti"

}
class FirstClass {
    var structInstance = FirstStruct()
    var city = "dhg"
    var stack = "Native"
}
let someStruct = FirstStruct()
let someClass = FirstClass()

print(someStruct.firstName)
print(someClass.structInstance.lastName)

//constant
//someStruct.firstName = "parth"
//print(someStruct.firstName)

someClass.city = "Dhrangadhra"
print(someClass.city)

someClass.structInstance.firstName = "harsh"
print(someStruct.firstName)
print(someClass.structInstance.firstName)

var secondStruct = FirstStruct()
secondStruct.firstName = "parth"
print(someStruct.firstName)

//Structure are value type
let thirdStruct = FirstStruct(firstName: "parth", lastName: "solanki")
print(thirdStruct)
var forthStruct = thirdStruct
print(forthStruct)

forthStruct.firstName = "ruchit"
print(thirdStruct.firstName)
print(forthStruct.firstName)
print(forthStruct.lastName)


//class are refference type
let classReference = FirstClass()
print(classReference.city)

let classReference2 = classReference
print(classReference2.city)

classReference2.city = "Dhrangadhra"
classReference2.stack = "NativeMobile"

print(classReference.city)
print(classReference.stack)

//identityOperator
if classReference === classReference2 {
    print("Both are point same insatance")
} else {
    print("Not both are point same instance")
}

//Enum Practices
//without Type
enum College {
    case collegeName
    case studentName
    case id
}
var collegeDetail = College.collegeName
collegeDetail = College.studentName
let collegeHas = College.collegeName.hashValue
print(collegeHas)
//let collegeRaw = College.collegeName.rawValue
//print(collegeRaw)

switch collegeDetail {
case .collegeName:
    print("Charusat")
case .studentName:
    print("tosif")
case .id:
    print("008")
}

//With type
enum CollegeType: String, CaseIterable {
    case collegeName = "Charusat"
    case studentName = "parth"
    case id = "024"
}

func withType() {
    var collegeType = CollegeType.collegeName
    print(collegeType)
    var collegeRawValue = CollegeType.collegeName.rawValue
    print(collegeRawValue)
    collegeRawValue = CollegeType.studentName.rawValue
    print(collegeRawValue)
}
withType()
print(CollegeType.allCases.count)

for detail in CollegeType.allCases {
    print(detail.rawValue)
}

//With Function argument enum
enum FuncArgument {
    case studentName(String)
    case studentMark(String, String, String)
}
func funcThroughArgument() {
    //let student = FuncArgument.studentName("tosif")
    let mark = FuncArgument.studentMark("30", "50", "70")

    switch mark {
    case .studentName(let name):
        print("My name is \(name)")
    case .studentMark(let m1, let m2, let m3):
        print("Mark 1 :\(m1) mark2: \(m2) mark3: \(m3)")
    }
}
funcThroughArgument()

//enum with associated value
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(4, 56909, 67876, 3)

productBarcode = .qrCode("ABJSNASSKLOSZKASXZB")
productBarcode = .upc(3, 4565, 35345, 1)
switch productBarcode {
case let .upc(numberSystem, manufacturing, product, check):
    print("UPC: \(numberSystem), \(manufacturing), \(product), \(check)")
case let .qrCode(code):
    print("qr: \(code)")
}

//raw values always same for particular enum

enum CheckRaw: Int {
    case one = 5, two, three, four, five
}
var checkRawValue = CheckRaw.one.rawValue
checkRawValue = CheckRaw.two.rawValue

var assignRawValue = CheckRaw(rawValue: 8)
checkRawValue = CheckRaw.four.rawValue

//Recursive enumration
indirect enum CalculateValue {
    case number(Int)
    case addition(CalculateValue, CalculateValue)
    case multiplication(CalculateValue, CalculateValue)
}

let five = CalculateValue.number(5)
let four = CalculateValue.number(4)
let sum = CalculateValue.addition(five, four)
let product = CalculateValue.multiplication(sum, CalculateValue.number(2))

func evaluate(_ expression: CalculateValue) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
