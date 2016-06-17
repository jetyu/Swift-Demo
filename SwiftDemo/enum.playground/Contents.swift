//: Playground - noun: a place where people can play

import Cocoa


enum testEnum{
    case Spring
    case Summer
    case Fall
    case Winter
}

var Season = testEnum.Fall
Season = .Spring
switch Season{
    case testEnum.Spring:
        print("Spring")
    case testEnum.Summer:
        print("Summer")
    case testEnum.Fall:
        print("Fall")
    case testEnum.Winter:
        print("Winter")
}


//练习1.枚举所有的知名电商网站
enum eBizWebsite {
    case tianmao
    case jingdong
    case dangdang
    case taobao
    case amazon
}

var eBizList = eBizWebsite.tianmao
switch eBizList{
    case .tianmao:
        print("Tianmao")
    case .jingdong:
        print("Jingdong")
    case .dangdang:
        print("dangdang")
    case .taobao:
        print("taobao")
    case .amazon:
        print("amazon")
    
}

//练习2.枚举所有的媒体网站，其他不知名的媒体网站单独划分一类

enum mediaWebsite{
    case qq
    case sina
    case sohu
    case netease
    case other
}

var mediaList = mediaWebsite.sohu

switch mediaList{
case .qq:
    print("QQ")
case .sina:
    print("sina")
case .sohu:
    print("sohu")
default:
    print("Other Media")
}


//练习3.枚举所有的科技公司，其他不知名的科技公司单独划分为一类
enum techCorp{
    case Google
    case Microsoft
    case Facebook
    case Other
}

var techCorpList = techCorp.Facebook
switch techCorpList{
case .Google:
    print("Google")
case .Microsoft:
    print("MS")
default:
    print("Other Tech Corp.")
}

//练习4.
enum Sex {
    case male(Int,Int)
    case female(String)
}
var isSex = Sex.female("s")
switch isSex{
case .male:
    print(3,4)
case .female:
     print("female")
    
}



//练习5
enum Country:Int {
    case China
    case Japan
    case Russia = 2
}

var myCountry = Country.China.rawValue
print(myCountry)
//
//switch myCountry{
//case .China:
//    print("China")
//case .Japan:
//    print("Japan")
//default:
//    print("default")
//}
//print(myCountry)
