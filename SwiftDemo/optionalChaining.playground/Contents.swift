//: Playground - noun: a place where people can play

import Cocoa

class Person {
    var house: House?
}

class House {
    var numberOfRooms = 1
}
let john = Person()

if let roomCount = john.house?.numberOfRooms {
    print("John's house has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// 打印 “Unable to retrieve the number of rooms.”

john.house = House()
if let roomCount = john.house?.numberOfRooms {
    print("John's house has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// 打印 “John's residence has 1 room(s).”