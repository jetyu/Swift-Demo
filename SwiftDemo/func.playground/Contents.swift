//: Playground - noun: a place where people can play

import Cocoa

//函数的定义和调用：

//有返回值，有参数的函数
func typing1(personName: String) -> String{
    return "Hello, " + personName
}
print(typing1("Ann"))
//有返回值，没有参数的函数
func typing2() -> String{
    return "Xeo"
}
print(typing2())
//没有返回值，有参数的函数
func typing3(personName:String) {
    print("Nice to meet you, " + personName)
}
typing3("Joe")
//没有返回值，没有参数
func typing4(){
    print("Hello,World")
}
typing4()
//有返回值，有多个参数
func triangleAera(width: Double,height: Double) -> Double{
    let aeraResult = width * height / 2
    return aeraResult
}
print("三角形面积是： \(triangleAera(10,height:20))")

//输入输出参数
var myName = "Jet"
func changeName(inout name: String){
    name += " AAA"
    name + " AA"
}

changeName(&myName)
print(myName)

func split(string a:String,seperator b:Character)-> (String){
    return a 
}

//由于给split函数设置了外部参数名string和seperator，所以执行的时候必须带上外部参数名，此处可以看到一个有意义的外部参数名大大节省开发者使用成本
split(string: "hello,world,!", seperator: ",") //结果：["hello", "world", "!"]

