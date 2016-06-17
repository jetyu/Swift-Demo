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
