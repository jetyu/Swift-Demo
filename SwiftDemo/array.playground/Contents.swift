//: Playground - noun: a place where people can play

import Cocoa
var threeDoubles = [Double](count: 3, repeatedValue: 1.0)
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.0)
var result = threeDoubles + anotherThreeDoubles
print("This is result \(result.count) items")

var shoppingList  = ["Eggs", "Milk"]
print("This is shoppingList \(shoppingList.count) items")
if shoppingList.isEmpty {
    print("item is empty")
}else{
    print("item is exist")
}
print("============================")

shoppingList.append("Beaf")
for item in shoppingList {
    print(item)
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
shoppingList += ["Pig","Rice"]
for item in shoppingList {
    print(item)
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
var firstItem = shoppingList[3]
print(firstItem)
print("This is shoppingList \(shoppingList.count) items")
print("============================")
shoppingList[1] = "Fatless Milk"
for item in shoppingList {
    print(item)
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
shoppingList.insert("Wuji Eggs",atIndex:0)
for item in shoppingList {
    print(item)
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
shoppingList.removeAtIndex(0)
for item in shoppingList {
    print(item)
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
shoppingList.removeLast()
for item in shoppingList {
    print(item)
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
for (index, item) in shoppingList.enumerate(){
    print("Index: \(index + 1) - item: \(item)")
}
print("This is shoppingList \(shoppingList.count) items")
print("============================")
