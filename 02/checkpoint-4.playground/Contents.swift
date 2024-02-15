import UIKit

enum    sqrtError: Error {
    case    outOfBounds, noRoot
}

func    calculateSqrt(_ number: Int) throws -> Int {
    if (number < 1 || number > 10_000) {
        throw (sqrtError.outOfBounds)
    }

    var guess = number / 2
    var previousGuess = 0
    // Babylonian method (or Heron's method) for finding the square root of a number
    while (guess != previousGuess) {
        previousGuess = guess
        guess = (guess + number / guess) / 2
    }

    if (guess * guess != number) {
        throw (sqrtError.noRoot)
    }

    return (guess)
}

do {
    let number = 100
    let result = try calculateSqrt(number)
    print("sqrt(\(number)) = \(result)")
} catch sqrtError.outOfBounds {
    print("Error: Out of Bounds!")
} catch sqrtError.noRoot {
    print("Error: No root!")
} catch {
    print("An unexpected error occured: \(error)")
}

// >> The Babylonian method <<
/*
 The Babylonian method: is an iterative algorithm that starts with an initial guess and refines that guess with each iteration until it converges to the square root.
 The loop continues until the guess and previousGuess become very close, indicating that the approximation has stabilized.
 This method is commonly used for finding square roots and is known for its simplicity and effectiveness.
 */
