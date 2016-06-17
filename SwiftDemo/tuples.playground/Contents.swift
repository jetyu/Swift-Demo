//: Playground - noun: a place where people can play

import Cocoa


//元祖的定义
let (statusCode,statusMsg) = (404,"Pages Not Found")
print("Code is \(statusCode),Msg is \(statusMsg)")

//元组的访问
let person = ("Jet","25","male")
let (name,age,sex) = person
//访问元组的值, 使用序号
print(person.0)
print(person.1)
print(person.2)
//下划线忽略某个值
let (getName,_,_) = person
print("Name is getName \(getName)")


//元组的创建
let http404error = (code:404,msg:"Not Found")
print(http404error.code)
print(http404error.msg)


//示例
//元祖:HTTP错误
//数组
// let array = [404, "Not Found"]
// 写法一:
let error = (404, "Not Found")
print(error.0)
print(error.1)
// 写法二:
let errors = (errorCode : 404, errorInfo : "Not Found")
print(errors.errorCode)
print(errors.errorInfo)
// 写法三:
let (errorCode, errorIno) = (404, "Not Found")
print(errorCode)
print(errorIno)


//练习1：用3种形式打印出一个人的姓名，年龄，所在公司。
let emp1 = ("zhang",25,"Google")
print("emp name is \(emp1.0),age is \(emp1.1),work in \(emp1.2)")

let emp2 = (name:"Li",age:21,inc:"IBM")
print("emp name is \(emp2.name),age is \(emp2.age),work in \(emp2.inc)")

let (empName,empAge,empInc) = ("yang",28,"microsoft")
print("emp name is \(empName),age is \(empAge),work in \(empInc)")
