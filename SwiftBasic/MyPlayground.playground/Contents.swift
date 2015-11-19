//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//Functions with Multiple Return Values

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

minMax([1,4,5,7,9])
minMax([1,4,5,7,9])!.min
minMax([1,4,5,7,9])!.max


var values = (0...10).map{ $0 }


let aaaa:String = "ddddd fsfd"

aaaa.characters.count

var myArray:[Int] = [1, 2, 3]
var myArray1 = myArray.map { $0 * 2 }
print(myArray1)

var myArray2 = myArray.map({ (i: Int) -> Int in return i*2 })

print(myArray2)


let padawans = ["Knox", "Avitla", "Mennaus"]
padawans.map({
	(padawan: String) -> String in "\(padawan) has been trained!"
})


func applyMutliplication(value: Int, multFunction: Int -> Int) -> Int {
	return multFunction(value)
}
applyMutliplication(2, multFunction: {value in
	value * 3
})

