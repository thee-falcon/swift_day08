import UIKit

enum    passwordError: Error {
    case    short, obvious
}

func    checkPassord(_ passowrd: String) throws -> String {
    if passowrd.count < 5 { throw(passwordError.short) }
    if passowrd == "12345" { throw(passwordError.obvious) }
    if passowrd.count < 8 {
        return ("OK")
    } else if passowrd.count < 10 {
        return ("Good")
    } else {
        return ("Excellent")
    }
}

let stringPass = "12"

do {
    let result = try checkPassord(stringPass)
    print("Password rating: \(result)")
} catch passwordError.short {
    print("Please use a longer Password!")
} catch passwordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an Error!")
}
