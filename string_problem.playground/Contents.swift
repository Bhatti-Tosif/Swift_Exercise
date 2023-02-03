//- String :-
//- Replace m with w in string. For eg :- Simform should be Siwforw
//- You are given the firstName and lastName of a user. Create a string variable called fullName that contains the full name of the user.
var company =  "Simform"
company.replace("m", with: "w")
var firstName = "tosif"
var lastName = " bhatti"
var fullName = firstName + lastName

//Find the longest word from string
//Eg :- “Hi I am a Trainee Engineer in Mobile Department”
//Output - “Department”
//Reverse a string :- Eg – name = “Simform”
var sentance = "Hi I am a Trainee Engineer in Mobile Department as add"
var splitSentance = sentance.split(separator: " ")
var length = splitSentance.map { word in
    (word.count, word)
}
print(length.max(by: <) ?? "Eroor")

//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
//Input: “Simform”
//Output: “Si”
outputString = String(inputString.prefix(upTo: inputString.index(inputString.startIndex, offsetBy: 2)))
//SECOND METHOD
var inputString = "Simform"
var outputString = ""
if inputString.count < 2 {
    outputString = inputString
} else {
    outputString = String(inputString[inputString.startIndex...inputString.index(inputString.startIndex, offsetBy: 1)])
}
print(outputString)

//Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.
//Input: “Simform”
//Output: imfor
inputString = "Simform"
outputString = String(inputString.dropFirst())
outputString = String(outputString.dropLast())
print(outputString)

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
//Input: "Swift", "Examples"
//Output: wiftxamples
var inputString1 = "Swift"
var inputString2 = "Example"
var concatinetedString = inputString1.dropFirst() + inputString2.dropFirst()
print(concatinetedString)

//Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
//Input: Swift
//Output: iftSw
var characterArray = Array(inputString1)
for _ in 0...1 {
    characterArray.append(characterArray.remove(at: 0))
}
print(characterArray)

//Write a Swift program to test if a given string starts with "Sw".
//Input: Swift
//Output: true
print(inputString1.hasPrefix("Sw"))

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
//Input: “Simform Solutions”, 3
//Output: Simons
var ourInputString = "Simform Solutions"
var requiredElemnt = 3
var ansofRequiredElement = ""
ansofRequiredElement = String(ourInputString.prefix(upTo: ourInputString.index(ourInputString.startIndex, offsetBy: 3) )) + String(ourInputString.suffix(from: ourInputString.index(ourInputString.endIndex, offsetBy: -3)))
print(ansofRequiredElement)


