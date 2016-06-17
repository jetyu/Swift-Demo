//: Playground - noun: a place where people can play

import Cocoa

class Vehicle {
    var currentSpeed = 20
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() ->String{
        return "makeNoise"
    }
    func autoDrive(){
        print("I Can auto Drive")
    }
    
}

let someVehicle = Vehicle()
someVehicle.autoDrive()
print(someVehicle.description)

class Bike: Vehicle{
    var hasBasket = true
}

let someBike = Bike()
someBike.hasBasket = false
someBike.currentSpeed = 15
print(someBike.description)

class Tandem: Bike{
    var seatNumbers = 0
}

let someTandem = Tandem()
someTandem.currentSpeed = 10
someTandem.seatNumbers = 2
print(someTandem.makeNoise())
print(someTandem.description)
print(someTandem.seatNumbers)
print(someTandem.hasBasket)

func getName(){
    print("Hello,World")
}
getName()



//练习
//父类：学校
class School{
    var totalNumberOfStudents = 0
    var totalNumberOfSeats = 0
    var totalNumberOfBus = 0
    var swimmingPool = 0
    var description:String {
        return "This School has  \(totalNumberOfStudents) Students"
    }
    func hasSchoolBus(numberOfBus: Int) -> String  {
        if numberOfBus == 0 {
            return "This School has no Bus"
        }else{
            return "This School has \(totalNumberOfBus) Bus"
        }
    }
    func hasSwimmingPool(swimmingPool: Int) -> Bool {
        return swimmingPool > self.swimmingPool
    }

    
}
//实例化
let mySchool = School()
mySchool.totalNumberOfStudents = 2000
mySchool.totalNumberOfSeats = 3000
mySchool.totalNumberOfBus = 100
let hasSchoolBusResult = mySchool.hasSchoolBus(100)
let hasSwimmingPoolResult = mySchool.hasSwimmingPool(1)

//输出学校的情况
print("School--Students:\(mySchool.totalNumberOfStudents),Seats:\(mySchool.totalNumberOfSeats),\(hasSchoolBusResult),swimmingPool:\(hasSwimmingPoolResult) ")


//子类：大学
class University: School{
    var hasLabs:Bool?
    func scienceAndTechnologyStudy(res resultOfStudy:Int) -> Int{
        return resultOfStudy
    }
}

//实例化
let myUniversity = University()
myUniversity.totalNumberOfSeats = 10000
myUniversity.totalNumberOfStudents = 50000
myUniversity.swimmingPool = 1
myUniversity.hasLabs = true
let hasScienceAndTechnologyStudy = myUniversity.scienceAndTechnologyStudy(res:10)

//输出大学的情况
print("University--Students:\(myUniversity.totalNumberOfStudents),Seats:\(myUniversity.totalNumberOfSeats) resultOfStudy:\(hasScienceAndTechnologyStudy)")

//孙类：大学二级学院
class softwareDeptOfUniversity: University{
    func typingCode(useProgrammingLanguages:String) -> String{
        return useProgrammingLanguages
    }
//重写父类University方法
    override func scienceAndTechnologyStudy(res resultOfStudy:Int) -> Int{
        return 10
    }


}
//实例化
let mySoftwareDeptOfUniversity = softwareDeptOfUniversity()
mySoftwareDeptOfUniversity.hasLabs = false
mySoftwareDeptOfUniversity.totalNumberOfStudents = 800
print(mySoftwareDeptOfUniversity.scienceAndTechnologyStudy(res: 0))
print("My Major is \(mySoftwareDeptOfUniversity.typingCode("C++"))")

//曾孙类：小学
class PrimarySchool: softwareDeptOfUniversity {
    var gear = 1
    override var description:String {
        return super.description + " in gear \(gear)"
    }
    override func typingCode(useProgrammingLanguages:String) -> String{
        return useProgrammingLanguages
    }

}
let primarySchool = PrimarySchool()
primarySchool.totalNumberOfStudents = 25
primarySchool.gear = 3
print("Car: \(primarySchool.description)")
