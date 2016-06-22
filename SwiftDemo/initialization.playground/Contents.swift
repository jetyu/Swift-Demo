//: Playground - noun: a place where people can play

import Cocoa


struct PersonName {
    var name:String = "Li Si"
    init(){
        name = "Zhang San"
    }
}
var personName = PersonName()
print("The default personName is \(personName.name)")


//构造参数
struct NoteBook{
    var defaultNotebook:String
    init(apple macbook: String){
        defaultNotebook = macbook + "Macbook 2015 Mid"
    }
    init(microsoft surface: String){
        defaultNotebook = surface + "Surface Book 2015 "
    }
}
//通过外部参数来引用的
var appleBook = NoteBook(apple: "Apple ")
print("This is \(appleBook.defaultNotebook)")
var msBook = NoteBook(microsoft: "Micrsoft ")
print("This is \(msBook.defaultNotebook)")


//可选属性类型
class School {
    var text: String
    var playround: Bool = true
    var labsName: String?
    init(text: String){
        self.text = text
    
    }
    func ask() {
        print(text)
    }
    func response(note: String) {
        print(note)
    }
}

let mySchool = School(text: "Learning")
let mySchool2 = School(text: "s")
mySchool.ask()
mySchool.labsName = "Intel"
var labs = mySchool.labsName
print(labs)

//构造函数还可以初始化常量存储属性
class Employee{
    let no:Int
    var name: String?
    var job:String?
    var salary:Double?
    var dept: Department?
    init(){
        no = 5000
        salary = 2000
        dept = nil
    }
}

struct Department{
    let no: Int //常量类型属性
    var name: String
    var number:Int?
    init() {
        no = 1001
        number = 1500
        name = "SALES"
    }
}

var emp = Employee()
var dept = Department()

print("EmpNo is \(emp.no) ,salary is \(emp.salary!)")
print("deptNo is \(dept.no) ,number is \(dept.number), name is \(dept.name)")

//构造函数重载,便利构造函数
class Rectangle{
    var width:Double
    var height:Double
    init(width:Double,height:Double){
        self.width  = width
        self.height = height
    }
    init(W width:Double,H height:Double){
        self.width = width
        self.height = height
    }
    init(length:Double){
        self.width = length
        self.height = length
    }
    init(){
        self.width = 200.0
        self.height = 100.0
    }
}
var rectc1 = Rectangle(width: 320.0, height: 480.0)
print("长方形1: \(rectc1.width) x \(rectc1.height)")
var rectc2 = Rectangle(W: 320.0, H: 480.0)
print("长方形2: \(rectc2.width) x \(rectc2.height)")
var rectc3 = Rectangle(length: 500.0)
print("长方形3: \(rectc3.width) x \(rectc3.height)")
var rectc4 = Rectangle()
print("长方形4: \(rectc4.width) x \(rectc4.height)")

//构造函数重载
class Rectangle{
    var width:Double
    var height:Double
    init(width:Double,height:Double){
        self.width  = width
        self.height = height
    }
    init(W width:Double,H height:Double){
        self.width = width
        self.height = height
    }
    convenience init(length:Double){
        self.init(W: length,H: length)
    }
    convenience init(){
        self.init(width:200,height:100)
    }
}
var rectc1 = Rectangle(width: 320.0, height: 480.0)
print("长方形1: \(rectc1.width) x \(rectc1.height)")
var rectc2 = Rectangle(W: 320.0, H: 480.0)
print("长方形2: \(rectc2.width) x \(rectc2.height)")
var rectc3 = Rectangle(length: 500.0)
print("长方形3: \(rectc3.width) x \(rectc3.height)")
var rectc4 = Rectangle()
print("长方形4: \(rectc4.width) x \(rectc4.height)")



