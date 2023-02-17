class MovieItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MovieItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MovieItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

var library = [Movie(name: "End game", director: "IronMan"), Song(name: "Dj", artist: "Badshah"), Movie(name: "Citizen Kane", director: "Orson Welles"), Song(name: "The One And Only", artist: "Chesney Hawkes")]
print(type(of: library))

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}
print("Movie instance: \(movieCount) and Song instance: \(songCount)")

//Down Casting
for item in library {
    if let movie = item as? Movie {
        print("Movie name: \(movie.name) and directorz; \(movie.director)")
    } else if let song = item as? Song {
        print("Song \(song.name) artist: \(song.artist)")
    }
}

class User {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Employee: User {
    var company: String
    init(name: String, company: String) {
        self.company = company
        super.init(name: name)
    }
}

var tosif = User(name: "Tosif")
var employee = Employee(name: "emp", company: "sim")

if let tosif = tosif as? Employee {
    print("yes")
} else {
    print("no")
}
type(of: tosif)
//employee = employee as! User
//employee.name


var things: [Any] = []

things.append(0)
things.append(0.0)
things.append(34.5)
things.append("tosif")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghost", director: "Akshay"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as double")
    case let someInt as Int:
        print("an integer value: \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double : \(someDouble)")
    case is Double:
        print("Some other double")
    case let someString as String:
        print("a string is: \(someString)")
    case let (x, y) as (Double, Double):
       print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
       print("a movie called \(movie.name), dir. \(movie.director)")
    case let stringConverter as (String) -> String:
       print(stringConverter("Michael"))
    default:
       print("something else")
   }
}
let optionalNumber: Int? = 3
//things.append(optionalNumber)
things.append(optionalNumber as Any)
things
