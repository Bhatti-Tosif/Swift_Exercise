//SET
//A set stores distinct values of the same type in a collection with no defined ordering
var intSet =  Set<Int>()

intSet.insert(20)
print(intSet)

var strSet: Set = ["tosif", "ruchi", "parth"]
type(of: strSet)
strSet.insert("harsh")
print(strSet)

if let member = strSet.remove("hars") {
    print("\(member) is out")
} else {
    print("not present")
}
//guard let member = strSet.remove("harsh") else {
//    return 0
//}
//print("\(member) is out")

strSet.forEach {
    print($0.sorted())
}

strSet.sorted().forEach {
    print($0)
}
let str: String?
str = "hello"
//str = "bhatti"

if strSet.contains("tosif") {
    print("It contain ")
} else {
    print("it not contain ")
}

//Set Function
var age : Set<String> = ["20", "30", "45", "50", "ruchit"]
var name : Set = ["tosif", "parth", "ruchit"]

age.union(name).sorted()
age.symmetricDifference(name)
age.subtracting(name)
age.intersection(name)

age.remove("ruchit")
age == name
age.isSubset(of: name)
age.isStrictSubset(of: name)
age.isSuperset(of: name)
age.isDisjoint(with: name)

//Function practice

func forReturnCheck(no1: Int, no2: Int) -> (Int, Int) {
    return (no2, no1)
}
print(forReturnCheck(no1: 23, no2: 45))

//function with optional return type

func minMax(numberArray: [Int]) -> (min: Int, max: Int)? {
    var minValue = numberArray.min()
    var maxValue = numberArray.max()
    return ((minValue, maxValue) as! (min: Int, max: Int))
}
var intArray = [20, 30, 40, 56]
print(type(of: intArray.min()))
if let check = minMax(numberArray: intArray) {
    print("min is \(check) and max is \(check)")
}

//argument label or external parameter name
func argLabel(firstNumber a: Int, secondNumber b: Int) -> (no1: Int, no2: Int) {
    return (a, b)
}
print(argLabel(firstNumber: 23, secondNumber: 34))
//Veriadic function
func veriadicFunc<Tosif>(a: Int ,member : Tosif... , b: Int ) {
    member.forEach { Tosif in
        print(Tosif, a, b)
    }
}
veriadicFunc(a: 10 ,member: 3, 4, 5, 5, b: 20)
veriadicFunc(a: 20 ,member: "hello", "hii", b:25)
//veriadicFunc(member: "hello", 45, 56)
func strwithCount(str: String) -> Int {
    print(str)
    return str.count
}
func strwithoutCount(str: String) {
    let _ = strwithCount(str: str)
}
print(strwithCount(str: "hello"))
strwithoutCount(str: "hiii")
//default value parameter
func defaultValue(user: String, company: String = "simform") {
    //user = "ruchit" we can not change parameter value bcoz it is let constant
    print("name is : \(user) and comapny is \(company)")
}
defaultValue(user: "tosif", company: "crest")
defaultValue(user: "parth")

//in out concept, when we need to change parameter value and give changes fter to the function end we use inout
func swapPara(no1: inout Int, no2: inout Int) -> (no1: Int, no2: Int) {
    let temp = no1
    no1 = no2
    no2 = temp
    return (no1, no2)
}
func swapPara2(no1: inout Int, no2: inout Int) {
    let temp = no1
    no1 = no2
    no2 = temp
}
var first = 30
var second = 45
print(swapPara(no1: &first, no2: &second))
swapPara2(no1: &first, no2: &second)
print("First \(first) and second: \(second)")

//Function type
func addNumber(no1: Int, no2: Int) -> Int {
    return no1 + no2
}
var addFunction:(Int, Int) -> Int = addNumber
//print(addNumber(2, 3))

//Function type as a parameter
func printAdd(_ addNumber:(Int, Int) -> Int, _ no1: Int, _ no2: Int) {
    print("Add: \(addNumber(no1, no2))")
}
printAdd(addNumber, 5, 3)

//Function Type as return type

func stepForward(_ value: Int) -> Int {
    return value + 1
}
func stepBackward(_ value: Int) -> Int {
    return value - 1
}

func stepFunction(backward: Bool) -> (Int) ->Int {
    return backward ? stepBackward : stepForward(_:)
}
var initial = 3
let goToZero = stepFunction(backward: initial > 0)

while(initial != 0) {
    print(initial)
    initial = goToZero(initial)
}

//Nested Function
func chooseSetupFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(value: Int) -> Int { return value + 1}
    func stepBackward(value: Int) -> Int { return value - 1}
    return backward ? stepBackward : stepForward
}

var startNumber = 4
let towardsZero = chooseSetupFunction(backward: startNumber > 0)
while (startNumber != 0) {
    print(startNumber)
    startNumber = towardsZero(startNumber)
}

//func callFun(_ : Int) -> Int {
//     return 0
//}
//
//callFun(23)

// Closures
var greeting = {
    print("hello World")
}
greeting()

//closures parameter

var greet = { (name: String) in
    print("Welcome, \(name)")
}
greet("tosif")

var findDouble = { (number: Int) -> Int in
    return number * 2
}
findDouble(45)

//closures as function parameter

func closerFunction(search: () -> (), no: Int) -> Int {
    search()
    return no
}

print(closerFunction(search: {print("Closures call")}, no: 23))

//trailing closures
//if function take closures as a last parameter

func takeLunch(mesagge: String, search: () -> ()) {
    print("Let's go for lunch, \(mesagge)")
    search()
}

takeLunch(mesagge: "parth", search: {
    print("In lunch have pizza")
})
takeLunch(mesagge: "ruchit") {
    print("In lunch have burger")
}

//Autoclosure
// require @autocloser
//// using {}
//takeLunch(mesagge: "harsh", search:{
//  print("Hello World!")
//})
//
//// without using {}
//takeLunch(mesagge: "harsh",search: print("Hello World!"))
////give error bcoz no add @autocloser

func display(printValue: @autoclosure () -> ()) {
    printValue()
}
display(printValue: print("Hello Autoclosure"))

//Inferring Type From Context
var name =  ["ruchit", "parth", "tosif"]
var check = name.sorted(by: { s1, s2 in return s1 > s2})
print(type(of: check),check)

//Implicit Returns from Single-Expression Closures
check = name.sorted(by: {s1, s2 in s1 < s2})
print(check)

//Shorthand Argument Names
//$0, $1, $2
check = name.sorted(by: { $0 > $1})
print(check)

//Operator Methods
check =  name.sorted(by: <)

//Capture Value in Swift
func doIncrement(forIncrement amount: Int) -> () -> Int {
    var total = 0
    print("doIncrement are called")
    func incrementer() -> Int {
        print("Increment function are called")
        total += amount
        return total
    }
    return incrementer
}
let incrementby20 = doIncrement(forIncrement: 20)
print("Call 1 : ")
print(incrementby20())
print("Call 2 : ")
print(incrementby20())
print("Call 3 : ")
print(incrementby20())

let incrementby10 = doIncrement(forIncrement: 10)
print(incrementby10())
print(incrementby10())
print(incrementby20())

let alsoIncrementby10 = incrementby10
print(alsoIncrementby10())

//Auto Closures
var customer = ["harsh", "parth", "tosif", "ruchit"]
var customerProviders: [() -> String] = []
func autoClosure( _ customerProvider : @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}

autoClosure(customer.remove(at: 0))
autoClosure(customer.remove(at: 0))

print("CustomreProviders count \(customerProviders.count)")
for name in customerProviders {
    print("Customer Providers name: \(name())")
}

