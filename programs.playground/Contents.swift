import Foundation
//• Create an empty dictionary and then perform add, update, delete operations on that.
//• Create a dictionary which should have double value from the last value of dictionary.o Eg :- if n = 3 then dict should be [1:2, 2:4, 3:8]
//• You are given int in string format convert this into Int and find sum. If the given input is not an Int then print error.

//Dictionary CRUDE operation
var grade = [String : Int]()
//insert
grade["tosif"] = 79
grade["ruchit"] = 79
grade["parth"] = 81
grade["meet"] = 80
print(grade)
//update
grade.updateValue(80, forKey: "parth")
print(grade)
//delete
grade.removeValue(forKey: "meet")
print(grade)

//• Create a dictionary which should have double value from the last value of dictionary.o Eg :- if n = 3 then dict should be [1:2, 2:4, 3:8]
var doubleDictionary = [Int : Int]()
var numberOfElement = 3
var startDictionary = 1
for element in startDictionary...numberOfElement {
    doubleDictionary[element] = (doubleDictionary[element - 1] ?? 1) * 2
}
print(doubleDictionary.sorted(by: <))

//• You are given int in string format convert this into Int and find sum. If the given input is not an Int then print error.
var numberInString = "1 2 3 4 5"
var sliceString = numberInString.split(separator: " ")
var stringToNumber = sliceString.map {
    var check = Int($0)
    if let check {
        return check
    } else {
        print("Error , Some string element are there")
        exit(1)
    }
}
print(stringToNumber.reduce(0, +))

//You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and print it.
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
var message = "wow this problem is hard"
var encoded = message.map {
    code[String($0)] ?? " "
}
print(encoded.joined())
