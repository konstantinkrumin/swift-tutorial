import UIKit

// Variables
var highScore = 0
highScore = 55

let myName = "Sean"

var currentActiveusers = 124
currentActiveusers = 1458

// Arrays
var ages = [21, 55, 19, 47, 22, 37, 88, 71]
ages.count
ages.first
ages.last
ages[4]
ages.append(99)
ages.insert(44, at: 0)
ages.sort()
ages.reverse()
ages.shuffle()
print(ages)

// Set
// It's unordered and has no duplicates
// much more performant than array
//var agesSet: Set<Int> = []
var agesSet = Set(ages)
print(agesSet)
agesSet.contains(22)
agesSet.insert(101)

// Dictionary
let devices: [String: String] = [
    "phone": "iPhone X",
    "laptop": "2016 MacBook Pro",
    "tablet": "2018 iPad Pro",
    "desktop": "2017 iMac Pro"
]

devices["laptop"]

// Functions
func printInstructorsName() {
    print("Sean Allen")
}

printInstructorsName()


func printInstructors(name: String) {
    print(name)
}

printInstructors(name: "Costa")


func add(firstNumber: Int, to secondNumber: Int) -> Int {
    let sum = firstNumber + secondNumber
    return sum
}

add(firstNumber: 18, to: 126)


// If / Else
var isDarkModeOn = true
if isDarkModeOn == true {
    print("That's how it should be")
} else {
    print("You are a psycho")
}

var myHighScore = 555
var yourHighScore = 444

if myHighScore > yourHighScore {
    print("I win")
} else {
    print("You win")
}


var score = 111

if score > 500 {
    print("You are the best")
} else if score > 250 {
    print("You are average")
} else {
    print("Yikes")
}


// For Loop
let allStars = ["James", "Davis", "Harden", "Doncic", "Leonard"]
for player in allStars {
    print(player)
}

for player in allStars where player == "Harden" {
    print(player)
}

for i in 0...25 {
    print(i)
}

for i in 0..<25 {
    print(i)
}

var randomInts: [Int] = []

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print(randomInts)


// Enum

//enum Phone {
//    case iPhone11Pro
//    case iPhoneSE
//    case Pixel
//    case Nokia
//}
//func getSeansOpinion(on phone: Phone) {
//    if phone == .iPhone11Pro {
//        print("This will be my next phone")
//    } else if phone == .iPhoneSE {
//        print("I dislike this phone, it's too small")
//    } else if phone == .Pixel {
//        print("Hardware is great. Android is ewww")
//    } else {
//        print("Can't be broken. Classic")
//    }
//}
// getSeansOpinion(on: .iPhone11Pro)

enum Phone: String {
    case iPhone11Pro   = "This will be my next phone"
    case iPhoneSE      = "I dislike this phone, it's too small"
    case Pixel         = "Hardware is great. Android is ewww"
    case Nokia         = "Can't be broken. Classic"
}

func getSeansOpinion(on phone: Phone) {
    print(phone.rawValue)
}
getSeansOpinion(on: .iPhone11Pro)

// Switch
func getSeansOpinion2(on phone: Phone) {
    switch phone {
    case .iPhone11Pro:
        print("This will be my next phone")
    case .iPhoneSE:
        print("I dislike this phone, it's too small")
    case .Pixel:
        print("Hardware is great. Android is ewww")
    case .Nokia:
        print("Can't be broken. Classic")
    }
}
getSeansOpinion2(on: .Pixel)

let matchMakingRank = 150

func determinePlayerLeague(from rank: Int) {
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in BRONZE League")
    case 50..<100:
        print("You are in SILVER League")
    case 50..<200:
        print("You are in GOLD League")
    default:
        print("You are in a league of your own. We don't know where you are")
    }
}

determinePlayerLeague(from: matchMakingRank)

// Operators
let valueOne = 100
let valueTwo = 88

let sum = valueOne + valueTwo
let division = valueOne / valueTwo
let modulo = valueOne % valueTwo

valueOne == valueTwo
valueOne != valueTwo

if valueOne == valueTwo && isDarkModeOn {
    print("Dark mode on AND they are equal")
}

if valueOne == valueTwo || isDarkModeOn {
    print("Dark mode on OR they are equal")
}

var counter = 30
counter += 1
counter -= 1

let greeting = "Hello"
let name = "Sean"
print(greeting + " " + name)

let agesYoung = [3,6,8]
let agesOld = [99,67]
let allAges = agesYoung + agesOld
print(allAges)

// Optionals
var agesOpt: [Int] = [21, 45, 18, 71, 44]
agesOpt.sort()

// if let
if let oldestAge = agesOpt.last {
    print("The oldest age is \(oldestAge)")
} else {
    print("There is no oldest age. You must have no students.")
}

// nil coalescing
let oldestAge = agesOpt.last ?? 999

//guard statement
//func getOldestAge() {
//    guard let oldestAge = oldestAge.last else {
//        return
//    }
//    
//    print("\(oldestAge) is the oldest age")
//}
//
//getOldestAge()

// force unwrap
//let oldestAge = ages.last!

// Self

// Class
class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    // init() {}
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func speakName() {
        print(name!)
    }
}

let sean = Developer(name: "Sean", jobTitle: "iOS Engineer", yearsExp: 5)
sean.name
sean.jobTitle
sean.yearsExp
sean.speakName()

//let costa = Developer()
//costa.name = "Costa"
//costa.jobTitle
//costa.yearsExp

// Inheritance
class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func speakFavoriteFramework() {
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("I don't have a favorite framework")
        }
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle!)")
    }
}

var costa = iOSDeveloper(name: "Costa", jobTitle: "iOS Engineer", yearsExp: 5)
costa.favoriteFramework = "ARKit"
costa.speakFavoriteFramework()
costa.speakName()

var joe = costa
joe.name = "Joe"
costa.name

// Struct
struct DeveloperStruct {
    var name: String
    var jobTitle: String
    var yearsExp: Int
}

var costaStruct = DeveloperStruct(name: "Costa", jobTitle: "iOS Engineer", yearsExp: 5)
var joeStruct = costaStruct
joeStruct.name = "Joe"
costaStruct.name

// Extension
extension String {
    func removeWhitespace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F"
print(alphabet.removeWhitespace())

// Fizz Buzz Challenge
func runFizzBuzz() {
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("FIZZBUZZ!")
        } else if i % 3 == 0 {
            print("FIZZ")
        } else if i % 5 == 0 {
            print("BUZZ")
        } else {
            print(i)
        }
    }
}

runFizzBuzz()
