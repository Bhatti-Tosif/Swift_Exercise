//•     Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
enum Check: Error {
    case lengthIsSmall
    case passIsEmpty
}
func passwordValidation(password: String) throws {
    if password.count < 8 && !password.isEmpty {
        throw Check.lengthIsSmall
    } else if password.isEmpty {
        throw Check.passIsEmpty
    }
}
do {
    try passwordValidation(password: "a")
}
catch Check.lengthIsSmall {
    print("Password too short")
} catch Check.passIsEmpty {
    print("Password is empty")
}


//•     Create a program for shopping cart. If desired quantity for an item is not available, throw exception.
enum Quantity: Error {
    case outOfStock
    case available
}
func shopingCart(item: Int) throws {
    var laptop = 5
    if laptop >= item {
        throw Quantity.available
    } else {
        throw Quantity.outOfStock
    }
}
do {
    try shopingCart(item: 7)
}
catch Quantity.available {
    print("your item is available")
} catch Quantity.outOfStock {
    print("Your item is out Of Stock")
}

