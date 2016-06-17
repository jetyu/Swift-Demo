//: Playground - noun: a place where people can play

import Cocoa

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
let someResolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")


let fullHD = Resolution(width:100,height:200)
var cinema = fullHD
cinema.height = 900
cinema.width  = 450
print("The width of cinema is \(cinema.width)")
print("The width of cinema is \(cinema.height)")
//证明了类是引用类型，其他的是值类型，结构体实例总是通过值传递，类实例总是通过引用传递。
print("The width of fullHD is \(fullHD.width)")
print("The width of fullHD is \(fullHD.height)")

//构建结构体的情况
/*
该数据结构的主要目的是用来封装少量相关简单数据值。
有理由预计该数据结构的实例在被赋值或传递时，封装的数据将会被拷贝而不是被引用。
该数据结构中储存的值类型属性，也应该被拷贝，而不是被引用。
该数据结构不需要去继承另一个既有类型的属性或者行为。

以下情境中适合使用结构体：
几何形状的大小，封装一个width属性和height属性，两者均为Double类型。
一定范围内的路径，封装一个start属性和length属性，两者均为Int类型。
三维坐标系内一点，封装x，y和z属性，三者均为Double类型

类和结构体的定义和使用基本相同，除了struct是值类型,class是引用类型外，struct是轻量级面向对象类型，轻量级的表现是只能定义一些简单的属性和方法，并且不能派生子类，
官方推荐使用class而不使用struct来编写程序
*/


//练习1
struct graphicsSize{
    var width = 20
    var height = 10
}

class graphicsModel{
    var graphics = graphicsSize()
    var isTriangle = false
    var graphicsBase = "juxing"
}

let someGraphicsSize = graphicsSize()
let someGraphicsModel = graphicsModel()

print("SIZE IS \(someGraphicsSize.width)")
print("Mode SIZE IS \(someGraphicsModel.graphics.height)")

let access = graphicsSize(width: 200, height: 100)
var res = access
res.width = 1
res.height = 2
print(access.height)
print(res.height)