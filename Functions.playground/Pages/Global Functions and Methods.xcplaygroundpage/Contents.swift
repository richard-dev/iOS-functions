//: # Functions
import Foundation
//: ## Global Functions
//: The functions __print__, __min__, __max__, and __abs__ are a few examples of global functions. Check out a complete list of Swift's global functions [here](http://swiftdoc.org/swift-2/func/).
//print
print("I'm a global function!")

//min
var initialPrice = 50
var bestOffer = 45
var finalPrice = min(bestOffer, initialPrice)

//max
var firstBid = 50
var secondBid = 75
var winningBid = max(firstBid, secondBid)

//abs
var negativeSeven = -7
abs(negativeSeven)












//: ## Methods
let array = ["A", "13", "B","5","87", "t", "41"]

class Arithmetic {
    func sumOfStrings(_ aBunchOfStrings: [String]) -> Int {
        let array = aBunchOfStrings
        var sum = 0
        for string in array {
            if Int(string) != nil {
                let intToAdd = Int(string)!
                sum += intToAdd
            }
        }
        return sum
    }
}

var calculator = Arithmetic()
calculator.sumOfStrings(array)
//: [Next](@next)

func firstCharacter(of word: String) -> Character {
    return word[word.startIndex]
}

func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}

placeFirstLetterLast("Richard")

// Arrays and Dictionaries
class MovieArchive {
    func filterByYear(year: Int, movies: Dictionary<String, Int>) -> [String] {
        var filteredArray = [String]()
        for (movie, releaseDate) in movies {
            if year == releaseDate {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
}

var aiThemedMovies = ["Metropolis": 1927, "2001: A Space Odyssey": 1968, "Blade Runner": 1982, "War Games": 1983, "Terminator": 1984, "The Matrix": 1999, "A.I.": 2001, "Her": 2015, "Ex Machina": 2015]

var myMovie = MovieArchive()
print(myMovie.filterByYear(year: 2015, movies: aiThemedMovies))


