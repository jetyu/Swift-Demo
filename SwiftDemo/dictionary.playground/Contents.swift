//: Playground - noun: a place where people can play

import Cocoa

var dictList1 = ["DLA":"Dalian","BJA":"Beijing","SHA":"Shanghai"]
print("The Dict of airport contains \(dictList1.count) items")
if dictList1.isEmpty{
    print("EMPTY")
}
print("===================")
//添加一个dict
dictList1["LHR"] = "London"
for (shortName,fullName)in dictList1{
    print("[\(shortName)]:\(fullName)")
}
print("-------------------")
//修改LHR的值,并遍历
dictList1["LHR"] = "London Airlines"
for item in dictList1{
    print(item)
}
print("===================")
if let oldValue = dictList1.updateValue("BeiJing T3", forKey: "BJA"){
    print("The old value is \(oldValue)")
}
print("===================")
//相当于检索特定的值
if let airportName = dictList1["SHA"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}
print("===================")
//遍历字典的键或者值,可以使用sort()方法排序（只能是值或者键）
for index in dictList1.keys.sort(){
    print(index)
}
print("-------------------")
for index in dictList1.values.sort(){
    print(index)
}

print([String](dictList1.values))


