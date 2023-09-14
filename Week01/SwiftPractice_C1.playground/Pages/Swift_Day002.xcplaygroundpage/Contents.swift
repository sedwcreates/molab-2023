//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//This is the start of my Swift 100 Day Challenge where I'll spend 1 hour each day learning a new topic.
//Day 1: https://www.hackingwithswift.com/100/swiftui/1
//Day 2: https://www.hackingwithswift.com/100/swiftui/2

//Check Point Problem 1
//Create a constant that holds a value of a temperature in celsius
//Convert the temperature to Farenheit by multiplying by 9, dividing by 5, and adding 32
//Print the results for the user in Farenheit and Celsius


let celsiusTemp = 24
let farenheitTemp = ((celsiusTemp * 9) / 5) + 32
let weatherForecast = "The current temperature is \(celsiusTemp) degrees celsius or \(farenheitTemp) degrees farenheit."
print(weatherForecast)

//Use Option+Shift+8 to get the degree symbol
