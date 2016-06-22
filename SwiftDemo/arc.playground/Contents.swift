//: Playground - noun: a place where people can play

import Cocoa

//自动引用计数示例
class Person {
    let name:String
    //构造函数
    init(name:String){
        self.name = name
        print("\(name) is being initialized")
    }
    //析构函数
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name:"John")
reference2 = reference1
reference3 = reference1
reference1 = nil
reference2 = nil
reference3 = nil

//类实例之间的循环强引用
class Persons{
    let name:String
    init(name:String){
        self.name = name
    }
    var apartment: Apartment?
    deinit{
        print("\(name) is being deinitialized")
    }
}

class Apartment{
    let unit:String
    init(unit: String) {
        self.unit = unit
    }
    var tenant: Persons?
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

var john: Persons?
var unit4A: Apartment?
john = Persons(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

//解决实例之间的循环强引用
NSLog("%@", <#T##args: CVarArgType...##CVarArgType#>)
