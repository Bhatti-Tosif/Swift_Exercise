//1. Breakfast
//You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
//Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
//If you can cook bacon and eggs print you can cook bacon and eggs.
//If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.
//Input:
//var baconAge = 3
//var eggsAge = 2
//Output: you can cook bacon and eggs
var baconAge = 8
var eggsAge = 22
if baconAge < 7 && eggsAge < 21 {
    print("you can cook bacon and age")
}
else if baconAge >= 7 && eggsAge <= 21 {
    print("throw out bacon but you can cook eggs")
}
else if eggsAge >= 21 && baconAge <= 7 {
    print("throw out eggs but you can cook bacon")
} else {
    print("You can not cook bacon and eggs")
}

//2. Leap Year
//You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
//The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.
//Input:
//var year = 2000
//Output: Leap year!
var year = 4016
if year % 4 == 0 {
    if year % 100 == 0 && year % 400 != 0 {
        print("Not Leap year!")
    } else {
        print("Leap year!")
    }
}

//3. Hitpoints
//You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
// 100 represents full health
// 0 represents dead.
//You want to add regenerating health to the game using the following rules:
//HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)
//When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)
//If the character has 0 HP then he doesn’t regenerate life (he’s dead)
//Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.
//Input:
//var hp = 60
//Output: 60
var hitpoint = 0
switch(hitpoint) {
case 1...20:
    hitpoint = 20
case 21...30:
    hitpoint = 30
case 31...40:
    hitpoint = 40
case 41...50:
    hitpoint = 50
case 51...60:
    hitpoint = 60
case 61...70:
    hitpoint = 70
case 71...80:
    hitpoint = 80
case 81...90:
    hitpoint = 90
case 91...100:
    hitpoint = 100
default:
    print("he's dad")
}
print(hitpoint)

//4. Above average
//You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.
//You are also given your grade in the class stored in a variable yourGrade of type Double.
//Print above average if your grade is greater than the class average or below average” otherwise.
// Note: the average of the class includes your grade.
//Input:
//var grade1 = 7.0
//var grade2 = 9.0
//var grade3 = 5.0
//var yourGrade = 8.0
//Output: "above average"
var student1 = 7.0
var student2 = 9.0
var student3 = 5.0
var yourGrade = 8.0
var average = (student1 + student2 + student3 + yourGrade) / 4
if average < yourGrade {
    print("above average")
} else if average > yourGrade {
    print("below average")
} else {
    print("Equal to average")
}

//5. Tipping
//You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
//You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
//Print the total cost of the meal.
//Input:
//var mealCost:Double = 3.5
//var tip:Int = 20
//Output:4.2
var mealCost:Double = 4.5
var tip:Int = 20
var valueOfTip = mealCost * Double(tip) / 100
print(mealCost+valueOfTip)
