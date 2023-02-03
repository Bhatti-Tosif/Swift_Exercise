//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
//Input: [1,2,3,1]
//Output: true
var checkFirstAndLast = [1, 2, 3, 1]
print(checkFirstAndLast.first == checkFirstAndLast.last)

//Write a Swift program to create a new array with double the length of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
//Input: [1,2,3,4]
//Output: [0,0,0,0,0,0,0,4]
//var countLengthOfInputArray = checkFirstAndLast.count
var outputDoubleArray = Array(repeating: 0, count: checkFirstAndLast.count * 2)
outputDoubleArray[outputDoubleArray.endIndex - 1] = checkFirstAndLast[checkFirstAndLast.endIndex - 1]
print(outputDoubleArray)

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
//Input: [0,1,2,3]
//Output: [0,1]
var inputArray = [0, 1, 2, 3]
var outputArray:[Int] = []
if inputArray.count < 2 {
    outputArray = inputArray
} else {
    for i in 0..<2 {
        outputArray.append(inputArray[i])
    }
}
print(outputArray)

//Write a Swift program to take one array and find out maximum number from that array
//Input: [0,50,100,20,80,150]
//Output: 150
print(inputArray.max() ?? "Error")

//Write a Swift program to take one array and sort it in descending order.
//Input: [0,5,6,2,10]
//Output: [10,6,5,2,0]
inputArray.sort(by: >)
print(inputArray)

//Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
//Input: var listOfNumbers = [1, 2, 3, 10, 100]
//var divisors = [2, 5]
//Output: 2,10,100
var listOfNumber = [1, 2, 3, 10, 100, 150]
var divisors = [2, 5]
var divisable = [Int]()
listOfNumber.map {
    for div in divisors {
        if $0 % div == 0 {
            divisable.append($0)
            return
        }
    }
}
print(divisable)
