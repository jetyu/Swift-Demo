//: Playground - noun: a place where people can play

import Cocoa

/*
Swift语言的类扩展是一个强大的工具，我们可以通过类扩展完成如下事情：
1，给已有的类添加计算属性和计算静态属性
2，定义新的实例方法和类方法
3，提供新的构造器
4，定义下标脚本
5，是一个已有的类型符合某个协议
*/
extension Double{
    //毫米换算方法
    func mm() -> String{
        return "\(self/1) mm"
    }
    //厘米换算方法
    func cm() -> String{
        return "\(self/10) cm"
    }
    //米换算方法
    func m() -> String{
        return "\(self/1000) m"
    }
    //千米换算方法
    func km() -> String{
        return "\(self/(1000*1000)) Km"
    }
}
let value = 100.0
print(value.mm())
print(value.cm())
print(value.m())
print(value.km())
    
//------------------
struct Account{
    var amount: Double = 0.0
    var owner:  String = ""
}

extension Account{
    static var interestRate: Double{
        return 0.075
    }
}
//打印输出interestRate属性，访问方式与其他的静态计算属性一样，通过“类型名”加“.”来访问静态计算属性。
print(Account.interestRate)

extension Double {//定义Double类型的扩展
    static var interestRate : Double = 0.0668 //利率
    func interestBy1() -> Double {
        return self * Double.interestRate //静态属性利率
    }
    mutating func interestBy2() {  //定义实例方法interestBy2
        self = self * Double.interestRate
    }
    static func interestBy3(amount : Double) -> Double { //定义静态方法interestBy3
        return interestRate * amount  //返回值是计算利息结果
    }
}

let interest1 = (10_000.00).interestBy1() //调用interestBy1方法计算利息
print("利息1 : \(interest1)")

var interest2 = 10_000.00 //调用interestBy2方法计算利息
interest2.interestBy2()
print("利息2 : \(interest2)")

var interest3 = Double.interestBy3(10_000.00) //调用interestBy3方法计算利息
print("利息3 : \(interest3)")

 