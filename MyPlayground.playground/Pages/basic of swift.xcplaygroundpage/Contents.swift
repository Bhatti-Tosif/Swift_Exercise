//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var i = 1
while(i<=10)
{
    guard i%2 == 0 else {
        print(i)
        continue
    }
    i+=1
}
print("hello")

