//var dict = ["tosif" : "bhatti", "parth" : "solanki", "ruchit" : "kalathiya", "harsh" : "kanazariya", "a" : "b", "b" : "c", "d" : "e"]
//var array = [20, 10, 30, 40]
//print(dict.count)
//print(dict.capacity)
//
//dict.keys
//array.sorted(by: <)
//print(array)
//array.sorted()
//print(array)
//
//
//print(dict.sorted(by: {$1.value >  $0.value}))
//
//dict.forEach { i in
//    print(i)
//}
//dict.distance(from: dict.keys.startIndex, to: dict.keys.endIndex)
//var sum = array.reduce(0, +)
////sum = array.reduce(into: 0, {
////    $0 + $1
////})
//
//
//array.reserveCapacity(60)
//array.capacity
//print(array.indices)
//array.underestimatedCount
//array.firstIndex(of: 10)
//print(array.enumerated())
//print(array.makeIterator())
//
//var i = dict.index(dict.startIndex, offsetBy: 2)
//print(dict[i])
//
////array.formIndex(after: array.startIndex)
//
//print(dict.indices)

//var ageAndName = ["tosif" : 20, "parth" : 30, "ruchit" : 40]
//
//var first = ageAndName.map { (name, age) in
//   return (age, name)
//}
//
//var second = Dictionary<Int,String>()
//ageAndName.map {
//
//    second[$1] = $0
//}
//print(second)
//
//var third = Dictionary(uniqueKeysWithValues: zip(ageAndName.values, ageAndName.keys))
//
//var ar = [20, 30, 40, 50]
//ar = []

var arr = [1, 1, 9, 2, 3, 5, 7, 5, 6, 7, 8]
var ans = arr.reduce(into: [Int]()) {
    $0.append(($0.last ?? 0) + $1)
    //print($0)
}
print(ans)

var removeDuplicate = arr.reduce(into: [Int]()) {
    if $0.last != $1 { $0.append($1)}
}
removeDuplicate
