# iOS-Basic
Swift Syntax Training
## Swift语法总结
---
### 1.函数

#### 1.1 函数定义
```swift
func funcName()->(){
code part
}
```
这样就定义了一个函数,它的参数为空,返回值为空,如果有参数和返回值直接写在两个括号里就可以了

#### 1.2 参数类型和返回值
```swift
//有参数没有返回值的函数
func sayGoodbye(personName: String) {
print("Goodbye, \(personName)!")
}
sayGoodbye("Dave")
//"Goodbye, Dave!"

//有参数没有返回值的函数
func empInfo(empNo:Int) -> Int{
return empNo
}
print(empInfo(empNo:10))
//10
```
参数需要指明类型,而如果没有返回值可以不写->()。
返回值只需要写返回类型,如果写了返回名称,必须写return语句
可以在函数调用后的值用点语法访问

#### 1.3 外部参数名
```swift
//en为外部参数名
func empInfo(en empNo:Int) -> Int{
return empNo
}
print(empInfo(en:20))
//20
```
在参数名称前可以加上外部参数名,调用的时候就可以带上它了。
如果外部参数名和内部参数名相同则可以直接在内部参数名前加#即可

#### 1.4 忽略外部参数名
```swift
func paramMethod(firstParmName: Int, _ secondParmName: Int) {
// function body goes here
// firstParameterName and secondParameterName refer to
// the argument values for the first and second parameters
}
paramMethod(firstParmName:1, 2)
```
如果跟参数设置一个默认值,则swift会自动加上外部参数名,如果不想有在前面用下划线就可以_,如果默认值参数不在最后则不能省略,在传参时传一个下划线进去就可以

#### 1.5 可变参数
```swift
func arithmeticMean(numbers: Double...) -> Double {
var total: Double = 0
for number in numbers {
total += number
}
return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers在最后一个参数后面加...代表是这个参数是可变参数并且类型就是它,参数个数至少是0个,在函数内可以使用for in 这个参数获得 这些参数
```
#### 1.6 输入输出参数
```swift
func swapTwoInts(inout a: Int, inout _ b: Int) {
let temporaryA = a
a = b
b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// prints "someInt is now 107, and anotherInt is now 3"
```
每个参数前面其实有一个隐藏的关键字let,如果想让参数可变(可赋值)则需要加上var关键字,不过也只是能赋值,因为是值拷贝所以不能修改外部参数的实际值,如果要变成地址传递,需要在参数前加inout 关键字,而实参需要加上& ,

1.7 swift中函数其实也只是种类型,函数名就是变量名,比如let func1 : () -> () 声明的就是个无参数无返回值的函数类型,所以如果一个函数返回一个函数的话和返回一个普通变量没什么区别


### 2.闭包

#### 2.1 闭包定义
```swift
{
(传入参数) -> 返回值的类型 in ... 表达式 ...
}
```
闭包代表了一段程序代码,{ (传入参数) -> 返回值的类型 in ... 表达式 ... },函数只是闭包的一个特例

#### 2.2 闭包可以推断返回类型
闭包可以推断返回类型,所以可以省略->返回值类型,参数类型也可以推到,所以参数类型也不要,括号也可以去掉,如果闭包只有一个表达式直接可以省略掉return关键字,因为我们可以用$0/$1简写参数,所以参数也可以省略掉.

#### 2.3 尾随闭包
如果闭包是函数最后一个参数,则可以去掉小括号,直接用大括号里的内容,不过需要大括号紧接着写,叫尾随闭包

2.4 内层返回函数会捕获外层的变量的值,当内层函数返回后,外层函数的内部变量并不会释放内存,它的变量的值会跟着内部函数的执行而变化


### 3.枚举

#### 3.1 枚举定义
```swift
enum CompassPoint{
case North, South , East, West
}
```
可以不用逗号,和声明语句一样分开用多个case写就可以了

#### 3.2 通过元组来判断
可以用元组来设定枚举对应每项中的值,并可以用switch case 中的值绑定来判断,

#### 3.3 多类型
枚举类型如果初始化为Int类型,它的下一项也会有一个加1的原始值,不过枚举直接复制成string都可以的


### 4.结构体
#### 4.1 结构体
的属性必须初始化,必须有默认值或者通过构造器init

#### 4.2 结构体是值类型
结构体本身是值传递,如果一个结构体赋值给另外一个结构体了也是两份拷贝,互相修改不会有影响


### 5.属性(成员变量)

5.1 结构体/类在初始化的时候成员变量一定要有值,如果你没有给出初始化方法,则默认有一个包含所有必须初始化的的init方法,如果你提供了,默认了就没有了

5.2 (延迟属性)用let声明的成员变量,就不能再修改了,如果是一个耗时的属性比如值是一个自定义对象,可以加上lazy属性,它只有在用到的时候才会对这个属性做初始化,避免不要的消耗(延迟属性)

5.3 (计算属性)有的属性是根据其它的属性计算出来的,并不是一个必须的属性,只是让使用的时候方便了些,在属性定义后面加上set/get方法,get方法需要返回一个值,set方法有一个参数,用来设置其它属性,如果不要参数就不要写参数外面的括号,它就有一个默认的参数newValue

5.4 如果只有get方法就是只读属性,只读属性swift提供了一种简写方式,直接把返回语句写在最外面的大括号里就可以了

5.5 swift提供了属性监听方法:willSet和didSet,两个都是一样有一个参数,分别将要设置的值,和属性过去的值,同样你如果不提供参数,会用两个默认的newValue和oldValue.这两个方法和set/get方法并列,在didSet方法中可以直接修改(调整)属性的值,但是这两个方法不能和set/get方法共存

5.6 swift中有类别属性,enum/struct 用关键字static,class就用class关键字,在class中let 声明的需要直接赋初始值,var声明的必须用get方法return,因为swift不允许class储存类属性,而enum/struct可以


### 6.函数(成员方法)

#### 6.1 外部参数名可以省略
class中的函数都不需要加上外部参数,因为除了第一个参数都默认加上了#符号,不过这只是swift帮你做了点事情而已,它并没有在语法上强制你做什么,你想为第一个参数加上外部参数也行,都用_代替默认的外部参数都可以

#### 6.2 区别变量名
在swift里self.x不代表会调用setX/getX方法,所以直接可以在set/get方法里这么用.

#### 6.3 结构体和枚举中，成员方法不允许修改成员变量
在struct和enum中,成员方法不允许修改成员变量,如果要修改需要加上mutating关键字,但是如果声明的结构体变量是一个let常量的话,这个方法也是不允许调用的.

#### 6.4 mutating方法中直接跟self赋值成另外一个变量
在struct和enum中你可以在mutating方法中直接跟self赋值成另外一个变量

#### 6.5 方法不同
在struct和enmu中用static标识一个方法是类方法,而class中用class关键字


### 7.角标(subscript)

7.1 重写subscript,类似于subscript(index: Int) -> Int{},里面写set/get方法,和声明变量,根据传参和返回值来确定下标的类型和返回值,重写了这个方法这个对应的类型就可以用角标了.

7.2 subscript方法参数的个数对应角标的个数,例如两个参数:mar[2,3]


### 8.继承

#### 8.1 所有类都是基础类
swift中没有基础类,所有不继承其它类的的类都是基础类,重写父类中init方法,要先调用super的init方法,然后再在后面修改属性的值,访问属性直接用属性名字就可以了,不用用self等

#### 8.2 重写属性和重写方法
要重写属性和重写方法类似,直接加个override就好了,在重写的set/get方法也可以调用super对应的属性值,或设置值都可以.

#### 8.3 final关键字
覆盖了didSet属性监视器就不能再覆盖set/get方法了,跟方法或属性加上final关键字可以防止被子类覆盖


### 9.构造函数(init)

#### 9.1
init方法和普通方法一样,你需要在init方法中把每个必须要赋值的属性都赋值,否则会出编译错误,init方法会给每个参数加上#,不要它的话可以用_,在方法内部用self访问,也可以不用

#### 9.2 可以自定义init方法
如果你自定义了init方法,那么swift会不再提供默认的init方法,你可以自己写一个init方法,init方法带不带参数什么都是可以的,自己决定就行

#### 9.3 init方法调用
如果你想一个init方法中调用另一个init方法,需要加上一个convenience关键字,在这个init方法里就可以调用另一个init方法了

9.4 在子类继承父类的时候,首先需要初始化子类的成员变量,然后才能调用super的init方法初始化父类的属性,最后可以修改子类和父类的属性,如果这个属性是父类的,在子类中也是用self访问,因为这个属性已经是它自己的了

9.5 如果子类一个init方法都没有提供,那么子类继承父类所有的构造器,可以用父类的init方法初始化

9.6 在初始化属性的时候,可以用闭包实现,只要在复制的=后面加上{},你们写return和其它语句,最后在{}后面加一个()表示闭包立刻执行,闭包和属性的set方法是类似的,只是在最开始提供的


### 10.销毁方法(deinit)

10.1 deinit方法会在对象销毁的时候调用,可以打印判断它时候销毁


### 11.内存管理(ARC)

11.1 可选类型或者普通类型属性只要对一个对象有一个引用,它的这个对象的引用计数就要加1,如果两个对象相互引用就会产生引用循环,所以需要跟其中的一个属性用关键字weak声明为弱引用,就是可以设置为nil

11.2 一般用weak声明的用可选类型,因为它引用的可能为nil,如果你在调用的时候能确定它是有值的,你可以声明为unowned的普通类型,它的效果是如果你能保证调用这个属性时不为nil时,swift建议用unowned,其它都和weak一样的

### 12.可选链(Optional Chaining)

12.1 对于一个可选类型的属性可以用?.和!.来访问,如果确定有值可以用a!.b!.c!.d,如果不确定有值可以用a?.b?.c?.d

### 13.类型转化

13.1 可以用 a is b 来判断对象a是否是b类型,返回值是一个boolean类型的值

13.2 as 可以把普通类型转化,比如double,int,cgfloat之类都可以用它转化

13.3 可以用 as? 把之类转化成父类,它的结果可以是nil或者转型成功,所以结果是一个可选类型,转化成功后用?.来访问方法或属性,也可以做可选绑定.

13.4 如果一个对象一定可以转化成功,则可以用as!转化,如果转化不成功会报运行时错误,比如在一个数组中全是animal,但是声明时是anyobject就可以这样用.

### 14.扩展/协议(categories,extension,protocol)

14.1 swift的extension没有名称,它是扩展到所有的实体类的,它不可以增加成员属性,但是可以增加计算属性

14.2 可以在protocol中声明属性和方法,可以定义属性时候是只读的或者是可读可写的

14.3 可以让一个extension继承一个protocol,在里面实现对应的方法

14.4 协议的类型是protocol<protcl1,protcl2>

### 15.泛型

15.1 可以在func或struct后面跟上<T1,T2>,在参数中就可以声明参数类型为这个类型,完全可以把它看做是一个类型

### 16.运算符重载

16.1 在swift中运算符可以重载,方法名就是运算符号,参数的个数和类型是根据它是几目运算符和运算符两边对应的参数类型决定的.
