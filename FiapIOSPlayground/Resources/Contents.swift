//: Playground - noun: a place where people can play

import UIKit

// Comentários

// inline commet

/*
 Block comment
*/

//
var age: Int = 29 //Mutable

//Constantes
let newAge:Int = 30 //Imutable


// Tipos 
// Int, Double, Float, String, Character, Bool
// Int, UInt, Int8, Int16, Int32, Int64, UInt8, UInt16, UInt32, UInt64

var count = 1 //Int
var dolarRate = 3.42 //Double
var fiapClass = "13MOB" //String
var cararcter: Character = "Ç"
var isMale: Bool = true
var 😃 = "Var emoji" //ctrl+commad+space


// Concatenação de strings
var name = "Tairo"
var lastName = "Roberto Miguel De Assunção"
var fullName = name + " " + lastName
var fullNameInterpolacao = "\(name) \(lastName)"
print(fullName)
print(fullNameInterpolacao)

// Tuplas
var addrees = (street:String, number:Int, postalCode: String)("Rua São vicente", 267, "Jordanopolis")
print("Rua: \(addrees.0), \(addrees.1), \(addrees.2)")
print("Rua: \(addrees.street), \(addrees.number), \(addrees.postalCode)")

var (street, number, postalCode) = addrees
print("Rua: \(street), \(number), \(postalCode)")

// Optional
var student : String?
student = "Tairo Roberto"
print(student!) // similar ou !! kotlin

if let student = student {
    print(student)
}else{
    print("estudante nulo")
}

var addressNumber = "1000"
if let addressNumber = Int(addressNumber) {
    print(addressNumber)
}

var grade:Int!  // optional, não esquecer de dar um valor para a variável, senã vai dar nullPointerException
grade = 10
print(grade)

// guard, garante que um optional será diferente de nulo

func doSomething(){
    guard let student = student else {return}
    print(student)// a partir daqui a variável pode ser usada sem medo de nullPointerExeception, pois foi validada pelo guard
    return
}

doSomething()


// Arrays

var tupleArray: [(String, Int)] = [
    ("Fulano", 22),
    ("Beltrano", 25),
    ("Eu", 29),
    ("Tu", 35)
]

print(tupleArray[0])

var names: [String]?
var ages: [Int] = []

// Add element

tupleArray.append(("Outro", 35))
tupleArray += [("Outro 2", 49)]
print(tupleArray)

let firstAndSecondElements = tupleArray[0..<2]
print(firstAndSecondElements)

tupleArray.insert(("Teste", 101), at: 2)
print(tupleArray)

var nickNames = [
    "name1",
    "name2"
]

nickNames.contains("name3")

// Dicioinários



// Operadores
//Modificando Operadores
infix operator  >-<
func >-< (left: Int, rigth: Int) -> Int {
    return 2 * left * rigth
}

print(5>-<3)

infix operator +
func + (left: Int, rigth: Int) -> Int {
    return 2 * left * rigth
}

print(5+3)


//condicionais

if 3 < 9 {
    print("SIM")
}else{
    print("NÄO")
}

let letter = "a"


switch letter {
case "a":
    preint("Vogal")
case "e":
    print("Vogal")
case "i":
    print("Vogal")
case "o":
    print("Vogal")
case "u":
    print("Vogal")
default:
    print("Consoante")
}



























































