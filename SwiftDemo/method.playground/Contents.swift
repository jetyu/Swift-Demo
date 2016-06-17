//import Cocoa
/*
increment让计数器按一递增；
incrementBy(amount: Int)让计数器按一个指定的整数值递增；
reset将计数器重置为0。
*/


//定义了Counter这个类
class Counter{
    var count = 0
    //定义了3种方法
    func increment(){
        count += 1
    }
    func incrementBy(amount:Int) {
        count += amount
    }
    func reset(){
        count = 0
    }
}
//类实例化
let counter = Counter()
//调用方法1
counter.increment()
print(counter.count)
//调用方法2
counter.incrementBy(2)
print(counter.count)
//调用方法3
counter.reset()
print(counter.count)


class Counter2 {
    var count = 1
    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}
let counter2 = Counter2()
//默认情况下，Swift 只把amount当作一个局部名称，但是把numberOfTimes即看作局部名称又看作外部名称。
counter2.incrementBy(10,numberOfTimes: 20)
print(counter2.count)

//Self属性,self消除方法参数x和实例属性x之间的歧义.
struct Point {
    var x = 0.0 ,y = 0.0
    func countLength(x: Double) -> Double{
        return self.x + x
    }
}
let point = Point(x:1.0,y:2.0)
print(point.countLength(10))



