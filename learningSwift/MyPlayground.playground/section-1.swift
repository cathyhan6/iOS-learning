// Playground - noun: a place where people can play


import UIKit
//Variable types

/*
This is a 
multiline
comment!
*/

var numbers = [3,6,9,12]

for (index,values) in enumerate(numbers) {
    println(values)
}

var familyAges = ["Dad":54,"Mom":50,"Cathy":18,"Jackie":15]

for (index, values) in familyAges {
    familyAges[index] = values + 1
}