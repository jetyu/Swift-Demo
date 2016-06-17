//: Playground - noun: a place where people can play

import Cocoa


//闭包的写法
/*

{() -> () in}

*/


//闭包
var arrayList1 = [1,2,0,5,3,6,4]
arrayList1.sort{(a,b)-> Bool in
    return a < b
}
print(arrayList1.sort())
print("=================")
//第一种方法
var arrayList2 = [11,12,10,15,13,16,14]
arrayList2.sort({
    return $0 > $1
})
print(arrayList2.sort())
print("=================")
//尾随闭包，如果闭包作为参数列表中的最后一个参数，你可以直接忽略它外面的括号
var arrayList3 = [0,20,10,50,30,60,40]
arrayList3.sort() {
    return $0 > $1
}
print(arrayList3.sort())

print("=================")
let names = ["张三", "李四", "王五"]
var reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s2 > s1
})
print(reversed)
print("=================")
reversed = names.sort( { s1, s2 in s1 > s2 } )
print(reversed)
print("=================")
//练习1
let closures = [9,8,7,5,6]
closures.sort(){
    $0 > $1
}
//遍历闭包
print(closures.sort())
for item in closures.sort(){
    print(item)
}
print("=================")
//练习2
var pcBrand = ["Lenovo","HP","Apple","Microsoft"]
pcBrand.sort(){(a,b) in
    return a > b
}
for pcList in pcBrand.sort(){
    print(pcList)
}
print("=================")
//总结：
var sumClosure: ((Int, Int) -> Int)! = nil
// 方式1：带有参数名，参数类型，返回值类型
sumClosure = { (a: Int, b: Int) -> Int in
    return a + b
}

// 方式2：省略参数类型
sumClosure = { (a, b) -> Int in
    return a + b
}

// 方式3：省略返回值类型
sumClosure = { (a, b) in
    return a + b
}

// 方式4：省略参数的小括号
sumClosure = { a, b in
    return a + b
}

// 方式5：省略参数名
sumClosure = {
    return $0 + $1
}

// 方式6：省略return关键字
sumClosure = {
    $0 + $1
}

// 就像函数一样使用，该传参传参，该接收结果就接收结果
let res = sumClosure(10, 20)
print(res)


