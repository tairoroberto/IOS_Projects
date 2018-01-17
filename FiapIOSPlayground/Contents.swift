//: Playground - noun: a place where people can play

import UIKit
import Foundation
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


/*
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
 
 
 //condicionais
 
 if 3 < 9 {
 print("SIM")
 }
 
 let letter = "a"
 
 
 switch letter {
 case "a":
 print("Vogal")
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
 
 var namesStudents = ["aluno", "aluno1", "aluno2", "aluno3"]
 
 for letter in namesStudents[1].characters {
 print(letter)
 }
 
 
 var i = 0
 let dic = ["RA": "Rafael", "DA": "Daniel", "AN": "André"]
 
 while i < dic.count {
 print("QQ coisa")
 i += 1
 }
 
 
 infix operator  <->
 func <-> (left: Int, right: Int) -> [Int] {
 
 var numbers: [Int] = []
 
 while numbers.count < left {
 
 let number = Int(arc4random_uniform(UInt32(right)) + 1)
 if !numbers.contains(number) {
 numbers.append(number)
 }
 
 }
 
 return numbers
 }
 
 print(15<->25)
 
 
 // Funcoes
 
 func doSomething(a:Int, b:Int) -> Int {
 return a + b
 }
 
 func saySomething(_ sentence: String, to name:String = "Fulano") {
 print(sentence, name)
 }
 
 saySomething("Olá", to :"Tairo")
 
 let studentJose = "José Eu;28"
 func getNameAndAge(_ data: String) -> (name: String, age: Int){
 let student = data.components(separatedBy: ";")
 guard let name = student.first, let ageStr = student.last, let age = Int(ageStr) else {return ("", 0)}
 
 return (name, age)
 }
 
 let (myName, myAge) = getNameAndAge(studentJose)
 
 func sumValues(initialValue:Int, withValues values:Int...) -> Int {
 var result = initialValue
 for value in values {
 result += value
 }
 
 return result
 }
 
 sumValues(initialValue: 1, withValues: 2,35,2,3,5,36,10)
 
 func multiply(a:Int, b:Int) -> Int{
 return a * b
 }
 
 func divide(a:Int, b:Int) -> Int{
 return a / b
 }
 
 
 func sum(a:Int, b:Int) -> Int{
 return a + b
 }
 
 
 func subtract(a:Int, b:Int) -> Int{
 return a - b
 }
 
 func calculate(a: Int, b:Int, operation: (Int, Int) -> Int) -> Int{
 return operation(a, b)
 }
 
 let result = calculate(a: 2, b: 8, operation: sum)
 
 
 
 //Apelido para um determindado valor
 typealias Operation = (Int, Int) -> Int
 
 
 //Retornando funcoes
 func getOperation(operation: String) -> Operation {
 switch operation.lowercased() {
 case "soma":
 return sum
 case "multiplicacao":
 return multiply
 case "divisao":
 return divide
 default:
 return subtract
 }
 }
 
 
 //Aplicando a funcao retornada
 let op = getOperation(operation: "soma")
 op(2, 2)
 
 //Clousures
 
 //Sintaxe de um funcao
 
 /*
 
 func nome(parametro: Tipo) -> TipoDeRetorno {
 return AlgoQueTemOMesmoTipoDeRetorno
 }
 
 */
 
 //Sintaxe de uma clousure
 
 /*
 
 {(parametro: Tipo) -> TipoDeRetorno in
 return AlgoQueTemOMesmoTipoDeRetorno
 }
 
 */
 
 calculate(a: 2, b: 5, operation: {(param1:Int, param2:Int) -> Int in
 let result = param1 * param2
 return result
 })
 
 
 calculate(a: 2, b: 5, operation: {(param1, param2) in
 let result = param1 * param2
 return result
 })
 
 
 calculate(a: 2, b: 5){ $0 * $1 }
 
 namesStudents.sort(by: {$1 < $0})
 namesStudents
 
 namesStudents.sort(by: < )
 
 let namesUperCase = namesStudents.map{$0.uppercased()}
 namesUperCase
 
 //Funcoes da Fundation
 
 pow(2, 2)
 sqrt(64)
 abs(-45)
 round(3.45)
 floor(3.45)
 ceil(3.45)
 
 
 //interacoes
 
 for (key,value) in namesUperCase.enumerated() {
 print(key, value)
 }
 
 name.hasSuffix("E")
 name.hasPrefix("T")
 
 //Tratamento de erros
 // do, try e catch
 enum Compass: String {
 case norte = "NORTE"
 case sul = "SUL"
 case leste = "LESTE"
 case oeste = "OESTE"
 }
 
 var compasss : Compass = .norte
 print("Estou indo em direcao ao \(compasss.rawValue)")
 
 
 enum Month {
 case january(Int)
 case february(Int)
 case march
 case april
 }
 
 let month = Month.february(29)
 
 switch month {
 case .january:
 print("Janeiro")
 case .february(let days):
 print("Fevereiro tem \(days) dias")
 case .march:
 print("Macio")
 case .april:
 print("Abril")
 }
 
 
 
 
 // Tratamento de erros
 
 enum AccessorError: Error {
 case wrongPassword
 case wrongLogin
 case wrongData
 }
 
 func login(userName:String, password: String) throws -> String {
 let validUser  = "AlunoFiap"
 let validPassword = "123456"
 
 if userName != validUser && password !=  validUser{
 throw AccessorError.wrongData
 
 }else if userName != validUser {
 throw AccessorError.wrongLogin
 
 }else if password != validPassword {
 throw AccessorError.wrongPassword
 
 }else {
 return "Usuário logado com sucesso!"
 }
 }
 
 
 do {
 let result = try login(userName: "Tairo", password: "123456")
 }catch {
 switch error as! AccessorError {
 case .wrongData :
 print("usuario e senha invalidos")
 case .wrongLogin :
 print("usuario invalido")
 case .wrongPassword:
 print("senha invalidos")
 }
 }
 
 
 //Generics
 //Passagem de parametros por referencia
 func swapsInts<T>(a: inout T, b: innout T){
 let temporaryA = a
 a = b
 b = temporaryA
 }
 
 var x = 10
 var y = 20
 swapsInts(a: &x, b: y)
 
 print(x, y)
 
 */


// ORIENTACAO A OBJETOS

class Vehicle {
    
    //Propriedade armazenada
    private var _speed: UInt = 0
    var model: String
    
    static let speedUnit = "km/h"
    
    //Propriedade armazenada
    var currentSpeed: String {
        return "O meu \(speed) \(Vehicle.speedUnit)"
    }
    
    var maxSpeed:Int {
        return 250
    }
    
    var speed: UInt {
        get { return _speed }
        set {
            let finalSpeed = min(maxSpeed, Int(newValue))
            _speed = UInt(finalSpeed)
        }
    }
    
    init(model:String) {
        self.model = model
    }
    
    //Método de instancia
    func descript() -> String{
        return "Veículo: \(model), velocidade \(speed)"
    }
    
    //Método de classe
    
    class func alert(){
        print("Se beber, nao dirija")
    }
}


var vehicle = Vehicle(model: "Bugatti")

print("A unidade utilizada em Vehicle é \(Vehicle.speedUnit)")

vehicle.speed = 500
Vehicle.alert()



class Car : Vehicle {
    var licensePlate: String
    var driver: String?
    
    subscript(index:Int) -> String {
        get {
            let plateArray = Array(self.licensePlate.characters)
            return String(plateArray[index])
        }
        set {
            var plateArray = Array(self.licensePlate.characters)
            plateArray[index] = Character(newValue)
            self.licensePlate =  String(plateArray)
        }
    }
    
    override var maxSpeed: Int {
        return 150
    }
    
    init(model: String, licensePlate: String) {
        self.licensePlate = licensePlate
        super.init(model: model)
    }
    
    convenience init(driver: String) {
        self.init(model: "", licensePlate: "")
        self.driver = driver
    }
}


var car = Car(model: "Camaro", licensePlate: "FCI2055")
print(car.licensePlate)

car[5] = "8"
print(car.licensePlate)


//Extensoes
var name: String = "Tairo Roberto Miguel De Assuncao"

print("Omeu nome tem \(name.characters.count) caracteres!")


extension String {
    var count: Int {
        return self.characters.count
    }
    
    func initials() -> String {
        return self.components(separatedBy: " ").map({String($0.characters.first!)}).joined()
    }
}

print("Omeu nome tem \(name.count) caracteres!, e tem as iniciais: \(name.initials())")


// Protocolos == intefaces em java

protocol ACCapable {
    var hasAC: Bool {get set}
    
    func turnAC(on: Bool)
}

extension Car: ACCapable {
    internal var hasAC: Bool {
        get {
            return true
        }
        set {
            self.hasAC = newValue
        }
    }
    
    
    internal func turnAC(on: Bool) {
        print("tem ar condicionado: \(on)")
    }
}

















