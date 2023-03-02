//•    Create following string manipulation functions using string extensions:

//•    Add a character in a string at 5th position
//•    Replace one character with other in a string
//•    Remove white spaces from string
//•    Get number of words in a string
extension String {
    //•    Add a character in a string at 5th position
    mutating func addAt5(ch: Character) {
        self.insert(ch, at: self.index(self.startIndex, offsetBy: 5))
    }
    
    //•    Replace one character with other in a string
    mutating func replaceChar(newChar: Character, oldChar: Character) -> String {
               return self.replacing(String(oldChar), with: String(newChar))
    }
    
    //•    Remove white spaces from string
    mutating func removeWhiteSpace() -> String {
        var result = ""
        for i in self {
            if i != " " {
                result.append(i)
            }
        }
        return result
    }
    
    //•    Get number of words in a string
    mutating func numberOfWord() -> Int {
        var count = 0
        for i in self {
            if i == " " {
                count += 1
            }
        }
        return count
    }
}
var name = "Tosif Bhatti "
name.addAt5(ch: "f")
print(name)
name.replaceChar(newChar: "c", oldChar: "b")
print(name.removeWhiteSpace())
print(name.numberOfWord())


