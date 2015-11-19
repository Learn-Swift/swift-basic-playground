//: Playground - noun: a place where people can play

import Cocoa


var s = "Hello Mr. "
for code in s.utf8 {
	print("\(code) \n")
}


let fullName = "First Last"
let fullNameArr = fullName.characters.split{$0 == " "}.map(String.init)
print(fullNameArr)

//count
let string = "FirxstxLasxst"
var arr = string.characters.split{$0 == "x"}.map(String.init)
print(arr.count - 1)

var pin = "12341234"

var endIndex      = pin.endIndex.advancedBy(-4)
var newPin        = pin.substringToIndex(endIndex)
var newPinConfirm = pin.substringFromIndex(endIndex)

print(newPinConfirm == newPin)

print(pin.substringToIndex(pin.endIndex.advancedBy(-4)))

