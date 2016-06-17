//: Playground - noun: a place where people can play

import Cocoa

var setList1:Set = ["Tony","Jerry","Mocha"]
var setList2:Set = ["Zhang","Li","Wang"]
var setList3:Set = ["1","2","3"]
var setList4:Set = [11,19,3,21,20]
print("==========")
print(setList1.count)

print("==========")
if setList1.isEmpty{
    print("没有值")
}else{
    print("有值")
}
print("==========")
setList1.insert("Mark")
setList2.insert("Zhu")
print(setList1)
print(setList2)
print("==========")
setList3.removeAll()
setList2.remove("Li")
print(setList1)
print(setList2)
print(setList3)
print("==========")
if setList2.contains("Wang"){
    print("it is exist")
}else{
    print("it is not exist")
}
print("==========")
//sort排序
for item in setList4.sort(){
    print(item)
}

print("----------------------------")
var setList5:Set = [1,3,5,7,9,8,10,0]
var setList6:Set = [0,2,4,6,8,10]
var setList7:Set = [1,3,5,7]
//并集
print(setList5.union(setList6).sort())
//交集
print(setList5.intersect(setList6).sort())
//交集取反
print(setList5.exclusiveOr(setList6).sort())
//不在该集合中的值创建一个新的集合
print(setList5.subtract(setList7).sort())
//一个集合中的值是否也被包含在另外一个集合中
print(setList5.isSubsetOf(setList7))
//一个集合中包含的值是否含有另一个集合中所有的值
print(setList5.isSupersetOf(setList7))
print(setList7.isSupersetOf(setList5))
//一个集合是否是另外一个集合的子集合或者父集合并且和特定集合不相等
print(setList7.isStrictSubsetOf(setList5))
print(setList5.isStrictSupersetOf(setList7))
//两个集合是否不含有相同的值。
print(setList7.isDisjointWith(setList6))














