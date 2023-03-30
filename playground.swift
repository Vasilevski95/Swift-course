// Swift Programming Tutorial FULL COURSE

import Foundation

print("Hello World")




//---------------------------------------
//Variables:

var myAgeNow = 23
//This is a variable that can be reassigned, when declared with var

let myFullName = "George Vasilevski"
//This is a const that cannot be reassigned, when declared with let




//---------------------------------------
//Arrays:

//Arrays are ordered and they have indexes to determine placement of the elements

var ages = [21,55,19,47,22,37,88,71]
//We don't need to specify if there are integers in the array

var ages: [Int] = []
//We have to specify the type of the array

var ages = [21,55,19,47,22,37,88,71]

print(ages.count)

print(ages.last)

print(ages[2])

ages.append(99)

ages.insert(44, at: 0)

ages.sort()

ages.reverse()

ages.shuffle()

print(ages)






//---------------------------------------
//Sets:

/*Sets are unordered, and they cant have duplicate values
The good thing about sets is their performance and speed
They have faster insertion, removal and lockup */

var ages = [18,33,56,17,94,26,33,17]

var agesSet = Set(ages)

print(agesSet)
//Output: We don't have duplicates and it is unordered

print(agesSet.contains(17))

/*
Example: If you have an array and you want to see if it contains a certain number
you must go through each item, for sets it doesent matter how much items do you have
 */

agesSet.insert(101)

print(agesSet)






//---------------------------------------
 //Dictionaries:

let devices: [String: String] = [
    "phone" : "iPhone X",
    "laptop" : "2016 MacBook Pro",
    "tablet" : "2018 iPad Pro",
    "desktop" : "2017 iMac Pro",
]

 //They are contained of key/value pairs

print(devices["phone"])
 //I know the key and I go directly to the key, and get the value

struct Developer {
     let name: String
     let jobTitle: String
     var devices: [String: String]
}





//---------------------------------------
//Functions:

/*
 Functions are contained of parameters that come after the name () and function scope {}
 You have to define them and then you have to call them ()
 They should be generic, so we can reuse them
 */

 func showInstructorsName(name: String) {
    print(name)
}

showInstructorsName(name: "George")


func add(firstNumber: Int, to secondNumber: Int) -> Int {
    let sum = firstNumber + secondNumber
    return sum
}

print(add(firstNumber: 18, to: 126))
/*Whenever you use functions, it is called the call site (giving arguments)
argument label (to) is used at the call site, the parameter label (secondNumber)
is used in scope*/

print(add(firstNumber: 10, secondNumber: 100))
//This is wrong

// -> this is called function signature
// return keyword spits a value that we want from this function






//---------------------------------------
//if/else statement:

/* if/else is based on conditional (true or false) */

var isDarkModeOn = false
// var isDarkModeOn = true

if isDarkModeOn {
    print("That's how it should be.")
} else {
    print("Then, the light mode is on.")
}

var myHighScore = 111

var yourHighScore = 444

if myHighScore > yourHighScore {
    print("I win")
} else  {
    print("You win")
}

var highScore = 1000

if highScore > 500 {
    print("You're the best")
} else if highScore > 250 {
    print("You're average")
} else if highScore > 100 {
    print("You need improvement")
} else {
    print("Yikes")
}

/* It checks all of the values from top to bottom to see if the high score fits the statement.
If it is, then it will print the message */





//---------------------------------------
//for loops:

/*
2 common ways to use them:
1.Iterate over a collection
2.Do something x number of times
*/

let allStars = ["James", "Davis", "Harden", "Doncic", "Leonard"]

for player in allStars {
    print(player)
}

//For every player in the allStars array I want to print their name

let allStars = ["James", "Davis", "Harden", "Doncic", "Leonard"]

for player in allStars where player == "Harden" {
    print(player)
}

//Iterates through every player in the allStars array, and when it finds specific player, it prints him out

var randomInts: [Int] = []

for _ in 0..<10 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
    print()
}

print(randomInts)

//This is range => How many times it happend
//If you're not using the named variable you use _






//---------------------------------------
//enum (enumeration):

/*
It is a group of values that are related that you put together in an enum
*/


enum Direction {
    case north
    case east
    case south
    case west
}


enum Phone: String {
    case iPhone13 = "This will be my next phone"
    case iPhoneSE = "It makes design hard."
    case pixel = "Hardware is great."
    case nokia = "Can't be broken. Classic."
}
//enum have cases, but you can also put them inline separated by commas.


func getGeorgesOpinion(on phone: Phone) {
    print(phone.rawValue)
}

getGeorgesOpinion(on: .iPhoneSE)

//Good thing about enums is that you avoid string-typing
//output: This will be my next phone
//rawValue gives a value to every case









//---------------------------------------
//switch statements:

enum Phone: String {
    case iPhone13
    case iPhoneSE
    case pixel
    case nokia
}

func getGeorgesOpinion(on phone: Phone) {
    switch phone {
    case .iPhone13:
        print("This will be my next phone.")
    case .iPhoneSE:
        print("It makes design hard.")
    case .pixel:
        print("Hardware is great.")
    case .nokia:
        print("Can't be broken. Classic.")
    }
}
//This is a switch statement paired with enum

// getGeorgesOpinion(on: .iPhone13)


let matchmakingRank = 1111111110

func determinePlayerLeague(from rank: Int) {
    switch rank {
        case 0:
            print("Play the game to determine your league")
        case 1..<50:
            print("You're in BRONZE league")
        case 50..<100:
            print("You're in SILVER league")
        case 100..<200:
            print("You're in GOLD league")
        default:
            print("You're in a league of your own.")
    }
}

determinePlayerLeague(from: matchmakingRank)

//The switch must be exaustive (it has to handle every possible case)
//That is why I must use default

//Switch statement is a cleaner, neater way to write big if/else statement









//---------------------------------------
//operators:

/*
+ Addition operator
- Subtraction operator
* Multiplication operator
/ Division operator
= Assignment operator
== Equality operator
! Bang operator
!= Not equal to
> Is greater than
< Is less than
>= Is greater than or equal to
<= Is less than or equal to
|| Or operator
&& And operator
*/

let valueOne = 55
let valueTwo = 88
let valueThree = 100

//If you want to divide these numbers, you have to make them floats or doubles
//But they have to be the same type (no for example first number: Double and second number: Float)

let addition = valueOne + valueTwo
let substraction = valueOne - valueTwo
let multiplication = valueOne * valueTwo
let division = valueOne / valueTwo
let modulo = valueThree % valueTwo
//modulo gives you the remainder (100 goes into 88 1 time and the remainder is 12)

print(addition) //output : 143
print(substraction) //output : -33
print(multiplication) //output : 4840
print(division) //output : 0 because Int is always a whole number
print(modulo) // output: 12

print(valueOne == valueTwo)
//output: false (They are not equal)

print(valueOne != valueTwo)
//output: true (They are not equal)

var isDarkModeOn = false

if !isDarkModeOn {
    print("It's so bright in here")
}
//bang operator checks the opposite of a given bool

if isDarkModeOn! {
    print("It's so bright in here")
}
//bang operator at the end is for unwrapping optionals

if valueOne == valueTwo && isDarkModeOn {
    print("Dark mode, and they are equal")
}
//Given the values, this will not execute until both this statements are true (&&)

if valueOne == valueTwo || isDarkModeOn {
    print("Dark mode, and they are equal")
}
//Given the values, this will not execute until one or the other statements are true (||)

var counter = 0

counter += 1
//Increment

counter -= 1
//Decrement

let greeting = "Hello"
let name = "George"

print(greeting + " " + name)
//Adding two strings together, output: Hello George







//optinals:

var ages = [21,45,18,61,44,23,17]

var ages1: [Int] = []

ages.sort()

let oldestAge = ages.last
print(oldestAge)
//optional ? gives you the ability to handle the value or handle nil
//output: 71 => That is the oldest age

let oldestAge1 = ages1.last
print(oldestAge1)
//output: nil, you have to unwrap the optional to see if its nil or a value

//if let

if let oldestAge1 = ages1.last {
    print("The oldest age is \(oldestAge1)")
} else {
    print("There is no oldest age.")
}
//if ages1.last has a value then assign it to the variable oldestAge1
//else if its nil then there is no oldest age



//nil coalescing
let oldestAge1 = ages1.last ?? 999
//if ages1.last has a value, then okay, if there is nil I give it a default value 999


//guard statement
func getOldestAge() {
    guard let oldestAge1 = ages1.last else {
        return
    }
    print("\(oldestAge1) is the oldest age")
}

getOldestAge()
//guard gives you an early exit if it is nil (you can clean code)



//force unwrap
let oldestAge1 = ages1.last!
//it forses the unwrap (does not check if it has a value or nil, just uses it)







//self:

/*
self refers to a type, usually the current type in the current context
for example: whatever current instance of a class you're in
*/








//class:

/*
Structures and classes are general-purpose,
flexible constructs that become the building blocks of your program’s code.
You define properties and methods to add functionality
to your structures and classes using the same syntax you use to define constants,
variables, and functions.
*/

class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?

    init() {}

    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    //The right side is whatever we are passing in, and the left side is properties that I am setting

    func speakName() {
        print(name)
    }
}

let george = Developer(name: "George", jobTitle: "Coder", yearsExp:2)

george.speakName()






//inheritance:

/*
A class can inherit methods, properties, and other characteristics from another class.
When one class inherits from another, the inheriting class is known as a subclass,
and the class it inherits from is known as its superclass.
Inheritance is a fundamental behavior that differentiates classes from other types in Swift.
*/


class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?

    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }

    func speakName() {
        print(name)
    }
}


class iOSDeveloper : Developer {
    var favouriteFramework: String?
    func speakFavouriteFramework() {
        if let favouriteFramework = favouriteFramework {
            print(favouriteFramework)
        } else {
            print("I don't have a favourite framework")
        }
        //optional
    }

    override func speakName() {
        print("\(name!) - \(jobTitle!)")
    }
    //with this we override speakName function to do something different
}

let george = iOSDeveloper(name: "George", jobTitle: "iOS Engineer", yearsExp: 5)
//We can use the power of inheritance to inherit features and functionalities from the superclass

george.favouriteFramework = "ARKit"
george.speakFavouriteFramework()

george.speakName()








//struct:

/*
Structs are more lightweight and performant than classes, because they are value types.
Difference between reference types and value types:
Classes are reference types and structs are value types.
Reference types (classes) point to the specific set of data.
Value types (structs) copy that data and it's its own instance when you create a new one
in life example: You can think of a reference type like a google sheet that you share with people.
Now, if you change something in that sheet, everyone will see the difference.
Value type is like when you create an excel spreadsheet and then send it to everyone.
Now that file becomes their own and they can change it, but your file remains unchanged.
*/


class Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int

    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
}

var george = Developer(name: "George", jobTitle: "iOS Engineer", yearsExp:5)

var joe = george
//joe is referencing george

print(joe.name)
//output: "George"

joe.name = "Joe"

print(joe.name)
//output: "Joe"

print(george.name)
//output: "Joe" => Refference points to the same data




struct Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int

    //struct has a memer-wise initializer
}

var george = Developer(name: "George", jobTitle: "iOS Engineer", yearsExp:5)

var joe = george
//Here, it makes a copy of george and assigns it to joe

joe.name = "Joe"
print(joe.name)
//output: "Joe"
print(george.name)
//output: "George" => Value type creates a copy







//extension:

/*
Extensions add new functionality to an existing type (class, structure, enumeration, or protocol type)
*/

extension String {
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces.joined())
    }
}

let alphabetLetters = "A B C D E F"

print(alphabetLetters.removeWhiteSpace())
//output: "ABCDEF"






/* FIZZBUZZ challenge:

Write a function that iterates through numbers 1-100
For numbers divisible by 3, print "FIZZ"
For numbers divisible by 5, print "BUZZ"
For numbers divisible by 3 & 5 (like 15), print "FIZZBUZZ"
For numbers that don't meet any of these qualifications, print the number
*/

/*
First I have to create a loop that ranges from 1-00
Then I can use modulo for each edgecases to determine if i have a remainder
If it is 0 then print the message for specific numbers, else print just the number
*/


func runFizzBuzz() {
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("FIZZBUZZ \(i)")
        } else if i % 3 == 0 {
            print("FIZZ \(i)")
        } else if i % 5 == 0 {
            print("BUZZ \(i)")
        } else {
            print ("\(i)")
        }

        //if a number divided by 3 has a remainder of 0
    }


}

runFizzBuzz()

/* OUTPUT:
1
2
FIZZ 3
4
BUZZ 5
FIZZ 6
7
8
FIZZ 9
BUZZ 10
11
FIZZ 12
13
14
FIZZBUZZ 15
16
17
FIZZ 18
19
BUZZ 20
FIZZ 21
22
23
FIZZ 24
BUZZ 25
26
FIZZ 27
28
29
FIZZBUZZ 30
31
32
FIZZ 33
34
BUZZ 35
FIZZ 36
37
38
FIZZ 39
BUZZ 40
41
FIZZ 42
43
44
FIZZBUZZ 45
46
47
FIZZ 48
49
BUZZ 50
FIZZ 51
52
53
FIZZ 54
BUZZ 55
56
FIZZ 57
58
59
FIZZBUZZ 60
61
62
FIZZ 63
64
BUZZ 65
FIZZ 66
67
68
FIZZ 69
BUZZ 70
71
FIZZ 72
73
74
FIZZBUZZ 75
76
77
FIZZ 78
79
BUZZ 80
FIZZ 81
82
83
FIZZ 84
BUZZ 85
86
FIZZ 87
88
89
FIZZBUZZ 90
91
92
FIZZ 93
94
BUZZ 95
FIZZ 96
97
98
FIZZ 99
BUZZ 100
*/
