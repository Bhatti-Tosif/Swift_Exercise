//import UIKit
//
//var greeting = "Hello, playground"
//
//let str="Hello"
//let number=56, num2=45
//let combine=str+String(number)
//print(combine)
//
//let fruit=5.6
//let fruit2=9.4
//let greet = "I have total  \(fruit+fruit2) friuts"
//
//
////Type annotion
//var firstName:String
//firstName="tosif"
//
//var red,blue,yellow:String
//
//
////var Int:String
//
////Int="Hello"
//
//
////Unsigned Int
//let minValue=UInt8.min
//let maxValue=UInt32.max
//
////numeric Literals
//let decimal = 17
//let binary=0b1001 //0b for binary
//let octal=0o34
//let hexa=0x45
//
////Type conversion
//
//let number1=3
//let number2 = 0.14
//let pi=Double(number1)+number2
//
//let intPi = Int(pi)
//
////Type alias
//typealias positive = UInt16
//
//var maxPositive = positive.max
//
////boolean
//let boolTrue = true
//if boolTrue{
//    print("It is an if ")
//} else {
//    print("It is an else")
//}
//
////if not boolean comparisison than
////let i = 0
////if i{
////    print("it is not bool")
////}
//
////multiline string
//let multiline = """
//I said,"I have one friut"
//after I said,"I have total \(fruit+fruit2) fruits"
//"""
//
////Tuples we can add any types of value
//let fullName = ("tosif","bhatti", 10) //using underscore ignore parts of tuple
//let (first,second, _) = fullName
//print("FirstName \(first) LastName \(second) code \(fullName.2)")
////assign name to tuple when it create
//var tuple2=(week:5,topic:"ios")
//print("\(tuple2.week) require for complete \(tuple2.topic) and try \(tuple2.1)")
//
////Optionals
//var optionalint:Int? = 40
////it contains 40 or nil
//let optional:String?
////it is automatic create nil  value
//optional="hello"
//print(optional)
//
////use in type conversion of string to int
//var positiveNum = "123"
//var convertToint = Int(positiveNum)
//print(convertToint)
//
//positiveNum = "hello45"
//convertToint = Int(positiveNum)
//print(convertToint)
//
////tuple comparision
//if (2 , "banana") < (2 , "apple"){
//    print("It is tuple comparision")
//}else {
//    print("Else part are printed")
//}
//
////ternary condition
//let square = 40
//let rectangle = square + ((square>=40) ? 10 : 0)
//print(rectangle)
//
////Nil coalescing Operator
//let a:String? = "hii"
//print((a ?? "hello"));//It is check a is nil or not
//let abc:String? = nil
//let roomCount=10
//if var roomCount: String? = nil {
//    print("John's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve the number of rooms.")
//}
//
//
////control Flow
//var numberforCondition = 35
//if numberforCondition > 35 {
//    print("number is greter than 35")
//} else if numberforCondition < 35 {
//    print("number is less then 35")
//}else {
//    print("number is 35")
//}
//
////switch statement
//var varforSwitch = 34.5
//switch varforSwitch {
//case 0...23.5 :
//    print("range is 0 to 23.5")
//
//case 23.5..<34.5 :
//    print("below 34.5")
//
//case 30...40 :
//    print("Range is 30 to 40")
//    fallthrough
//
//case 34.5...50 :
//    print("below 50")
//
//default:
//    print("defult run")
//}
//
////switch in tupple
//var tupleforSwitch = ("bhatti",10)
//
//switch tupleforSwitch {
//case ("bhatti",11) :
//    print("Case 1 is run")
//case ("bhatti",12) :
//    print("case 2 is run")
//default :
//    print("default is run")
//}
//
////for in loop
//var languages = ["python","java","swift","C++"]
//
//for language in languages where language != "swift" {
//    print(language)
//}
//
////for with stride
//for i in stride(from: 1, to: 10, by: 2) {
//    print(i);
//}
//
////
//
////array
//var fruits = ["apple","banana","stawberies"]
//
////print(fruits[0])
//
////array automaticaly grow as you append
//fruits.append("pinepal")
//print(fruits)
//fruits[2]="chiku"
//print(fruits)
//
////Dictionary create
//var dictionary1 = ["tosif":"Native","parth":"android","harsh":"ios"]
//print(dictionary1)
//
//print(dictionary1["tosif"])
//dictionary1["rahul"]="java"
//print(dictionary1)
//
////for create empty array and dictionary
//
//var emptyArray : [String] = []
//var emptyDict : [Int:String] = [:]
//
//print(emptyDict)
//
//emptyDict[10]="tosif"
//print(emptyDict)
////type information inferred than create like
//
////emptyArray = [ ]
////emptyDict = [ : ]
//
//emptyDict[11] = "Native"
//emptyDict[9]="ios"
//print(emptyDict)
//
////Control flow
//
//let allScore=[50,65,45,75,86,34,98]
//
//for score in allScore {
//    if score>50{
//        print("\(score): It is good")
//    }
//    else if score>75{
//        print("\(score): It is very good")
//    }
//    else{
//        print("\(score): It is poor performance")
//    }
//}

//guard statement
var i = 1
while(i<=10)
{
    guard i%2 == 0 else {
        print(i)
        i=i+1
        continue
    }
    i+=1
}

//guard let
func guardLet() {
    var guardletNum:Int?
    guard let num = guardletNum else {
        print("guardletNum contain null")
        return
    }
    print("guard let contain number value")
}

guardLet()

//array

//defimne array
var basicArray = [30,40]
var emptyArray:[Int] = []
emptyArray.append(40)

//create array with default value
var myName = ["tosif", "tosif"]
var mySurname = ["parth", "parth"]
var numArray =  Array(repeating: 2, count: 3)
var addAraay =  myName + mySurname

var arrayLiteral = Array(arrayLiteral: "tosif","parth","ruchit")

//array methods
print("total Array element are : \(addAraay.count)")

if addAraay.isEmpty {
    print("Array is empty")
} else {
    print("Array isn't empty")
}

addAraay.append("ruchit")
//we can alson add like this

addAraay += ["HARSH"]
var myName1 = addAraay[2]

//myName[2...4] = ["harsh", "rahul"]
//print(myName)
//
//myName.insert("meet", at: 1)
//
//myName.remove(at: 2)
//
//for (index, value) in myName.enumerated() {
//    print("Item: \(index+1) : \(value)")
//}
//
//myName.contains("tosif")
//myName.sort()
//myName.reverse()
//myName.shuffle()
//myName.forEach { temp in
//    print(temp)
//}
//
//myName.swapAt(0, myName.count-1)
//
//var mixedAraray : [Any] = ["mac", 13.2, "swift", 5.7, 10]


//Dirctionary

var rankofCompany = [1 : "Simform", 2 : "crest", 3 : "anablick" ]
print(rankofCompany)

//add element
rankofCompany[4] = "meditab"

rankofCompany[4] = "squad" //update value
print(rankofCompany)

//access only key velue

var companyRank = Array(rankofCompany.keys)
var companyName = Array(rankofCompany.values)

print("\(String(describing: rankofCompany.removeValue(forKey: 3)))")

rankofCompany.randomElement()

for (key, value) in rankofCompany {
    print("Key: \(key) & value:\(value)")

}

//String

let multiLine = """
I am bhatti tosif \
hello now secomnd line \"\"\"
"""

let str1 = #"Line 1\nLine 2"#

var emptyString = ""
var emptyString2  = String()

var mutableString = "Hello I am "

mutableString += "Tosif"

for char in mutableString {
    print(char)
}

//var charArray: [Character] = ["I","m","T"]

//var strArray = String(charArray)

var nameString = "Tosif"
var surnameString = "Bhatt"

surnameString.append("i")

//charArray.append("O")

//nameString[nameString.startIndex]
//nameString[nameString.index(after: nameString.endIndex)]
for index in nameString.indices{
    print("\(index): \(nameString[index])")
}

print(nameString[nameString.index(nameString.startIndex, offsetBy: 3)])

nameString.insert("M", at: nameString.endIndex)

nameString.insert(contentsOf: " m ", at: nameString.endIndex)

nameString.remove(at: nameString.index(nameString.endIndex, offsetBy: -4))

nameString.removeSubrange(nameString.startIndex...nameString.index(nameString.endIndex, offsetBy: -4))
 print(nameString)

nameString = "Tosif M"

var subStringRange = nameString.firstIndex(of:" ") ?? nameString.endIndex
var nameSubString = nameString[..<subStringRange]

//var nameArray = UnicodeScalar(97)!
//var name : Character = "a"
//print(name.asciiValue!)
//print(type(of: nameArray))
//print(nameArray)

var nameArray = ["tosif bhatti", "parth solanki","ruchit kalathiya","harsh kanazariya","tosif bhatti"]
var tosifPrifixCount = 0,parthPrifixCount = 0

for student in nameArray {
    if student.hasPrefix("tosif") {
        tosifPrifixCount += 1
    }
    else if student.hasPrefix("parth") {
        parthPrifixCount += 1
    }
    else{
        continue
    }
}
print("tosif \(tosifPrifixCount) and parth \(parthPrifixCount)")

var arrayofNumber = [2,6,3,4,nil]
nameArray.sort()
nameArray.sort(by: >)
nameArray.count
//arrayofNumber.first(where: { $0 > 2})
arrayofNumber.debugDescription
arrayofNumber.description
arrayofNumber.hashValue
arrayofNumber.randomElement()
//arrayofNumber.forEach({ i in
//    print(i)
//})
print(arrayofNumber)
arrayofNumber.enumerated()
//print(arrayofNumber.flatMap({ $0 }))

print(arrayofNumber.compactMap({ $0 }))

arrayofNumber.distance(from: 2, to: 4)

print(nameArray.split(separator: ","))

//Dictionary
//

//• Create an empty dictionary and then perform add, update, delete operations on that.
//• Create a dictionary which should have double value from the last value of dictionary.o Eg :- if n = 3 then dict should be [1:2, 2:4, 3:8]
//• You are given int in string format convert this into Int and find sum. If the given input is not an Int then print error.


var grade = [String : Int]()

grade.insert
