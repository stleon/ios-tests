// Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"

println("Hello, world!")

let myAge = 22

var myVarible = 12

let explicticType: Float = 4

let label = "The width is "

let width = 19

let label_width = "\(label) \(explicticType)"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

var option_string: String? = "Hello"

option_string == nil

var optional_name: String? = nil

var greeting = "Hello, "

if let name = optional_name {
    greeting = "Hello, \(name)"
}
else{
    greeting = "No name"
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}


var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", "Tuesday")

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

var numbers = [20, 19, 7, 12]

let mappedNumbers = numbers.map({ number in 3 * number })
mappedNumbers

let sortedNumbers = sorted(numbers) { $1 > $0 }

sortedNumbers

class Shape {
    var numberOfSides = 0
    let my = 1
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func my_let() -> Int{
        return my
    }
}

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
let ace = Rank.King
let aceRawValue = ace.toRaw()

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()