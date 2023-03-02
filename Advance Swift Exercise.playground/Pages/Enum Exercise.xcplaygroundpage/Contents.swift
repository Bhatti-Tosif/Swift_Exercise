//•    Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
//Example. It should return Monday or mon if I pass parameter 1 for get day name.
enum Weekday: Int {
    case mon = 1, tue, wed, thur, fri, sat, sun
}
var monday = 5
if let todaysdate = Weekday(rawValue: monday) {
    switch todaysdate {
    case .mon:
        print("Monday")
    case .tue:
        print("Tuesday")
    case .wed:
        print("Wendesday")
    case .thur:
        print("Thursday")
    case .fri:
        print("Friday")
    case .sat:
        print("saturday")
    case .sun:
        print("Sunday")
    }
}

//2) Create one enumeration program to return number of days in a month.
enum MonthDay {
    case jan, feb, march, april, may, june, july, aug, sep, oct, nov, dec
}
let currentMonth = MonthDay.april
var days: Int = 0
switch currentMonth {
case .jan, .march, .may, .july, .aug, .oct, .dec:
    days = 31
case .feb:
    days = 28
case .april, .june, .sep, .nov:
    days = 30
}
print("Month: \(currentMonth) and days: \(days)")


//3) Write a swift program using enumerations to demonstrate Int enums.
enum Grade: Int {
    case android = 90
    case ios = 89
    case kotlin = 88
}
if let sub2 = Grade(rawValue: 90) {
    switch sub2 {
    case .android:
        print("Android")
    case .ios:
        print("Ios")
    case .kotlin:
        print("Kotlin")
    }
}


//4) Write a swift program to demonstrate string type enum.
enum StringType: String {
    case name = "tosif"
    case surname = "bhatti"
}
if let fullName = StringType(rawValue: "tosif") {
    switch fullName {
    case .name:
        print(StringType.name.rawValue)
    case .surname:
        print(StringType.surname.rawValue)
    }
}


//5) Write a swift program for enum with raw values.
enum RawType: Int {
    case one = 1, two, three, four
}
if let number = RawType(rawValue: 3) {
    switch number {
    case .one:
        print("One")
    case .two:
        print("Two")
    case .three:
        print("Three")
    case .four:
        print("Four")
    }
}

//6) Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).
enum CaseType: CaseIterable {
    case one, two, three, four, five
}
for i in CaseType.allCases {
    print(i)
}
var nonCase = CaseType.one
switch nonCase {
case .one:
    print(CaseType.one)
    fallthrough
case .two:
    print(CaseType.two)
    fallthrough
case .three:
    print(CaseType.three)
    fallthrough
case .four:
    print(CaseType.four)
    fallthrough
case .five:
    print(CaseType.five)
}



//7) Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).
enum PersonDetail {
    case name(String, String)
    case surname(String)
    case age(Int)
}
var detail = PersonDetail.name("tosif", "bhatti")
print(detail)
detail = PersonDetail.age(21)
print(detail)


//8) Create an enum with its rawValues of type String and show usage of case to print value of case.
enum PracticeOfRawValue: String {
    case name = "Tosif"
    case surname = "bhatti"
    
}
var practice = PracticeOfRawValue.name
print(practice.rawValue)
