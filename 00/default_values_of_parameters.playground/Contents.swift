import UIKit

// we can initizalie a default values of parameter like this:
func    printTimesTable(num: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) * \(num) = \(i * num)")
    }
}

printTimesTable(num: 3)

var characters = ["Omar", "Anouar", "Oussama", "Said"]
print(characters.count)
// removeAll(), Swift will automatically remove all the items in the array,
// then free up all the memory that was assigned to the array.
// keepingCapacity is a Boolean with the default value of false so that it does the sensible thing by default,
// while also leaving open the option of us passing in true for times we want to keep the array’s existing capacity.
characters.removeAll(keepingCapacity: true)
print(characters.count)

