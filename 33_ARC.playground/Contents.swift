//: Playground - noun: a place where people can play

import UIKit

//自动引用计数器
//Swift使用自动引用计数(ARC)来跟踪并管理应用使用的内存。大部分情况下，这意味着在Swift语言中，内存管理"仍然工作"，不需要自己去考虑内存管理的事情。当实例不再被使用时，ARC会自动释放这些类的实例所占用的内存。

//然而，在少数情况下，为了自动的管理内存空间，ARC需要了解关于你的代码片段之间关系的更多信息。本章描述了这些情况，并向大家展示如何打开ARC来管理应用的所有内存空间。

//1.ARC
class Person{
    let name: String
    
    //构造函数
    init(name:String){
        self.name = name
        println("\(name) 被初始化")
    }
    //析构函数
    deinit{
        println("\(name) 被析构了")
    }
    
}

var 关羽:Person?
var 刘备:Person?
var 张飞:Person?

关羽 = Person(name: "云长")
刘备 = 关羽
张飞 = 刘备

关羽 = nil
刘备 = nil
//只有最后一个对象都是nil时候才释放内存
张飞 = nil

//2.对象中的互相强引用
class 人物{
    let userName: String
    init(userName:String){
        self.userName = userName
    }
    var 某国: 国家?
    deinit{
        println("皇帝是：\(userName)")
    }
}

class 国家 {
    let cityName: String
    init(cityName:String){
        self.cityName = cityName
    }
    //var 某人: 人物?
    //修改为弱引用就可以
    weak var 某人: 人物?
    deinit{
        println("国家是：\(cityName)被攻击")
    }
}
var 汉中王: 人物?
var 都城: 国家?
汉中王 = 人物(userName: "刘备")
都城 = 国家(cityName: "成都")

//进行互相的强类型引用
汉中王?.某国 = 都城
都城?.某人 = 汉中王
//这样是不能进行析构，修改为弱引用就可以了

汉中王 = nil
都城 = nil


//3.无主引用
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { println("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    //无主引用
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { println("Card #\(number) is being deinitialized") }
}
    var john: Customer?
    john = Customer(name: "John Appleseed")
    john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
    john = nil





//3.弱引用、无主引用、隐式展开的可选属性
//人物和国家的例子说明了下面的场景：两个属性的值都可能是nil,并有可能产生强引用环。这种场景下适合使用弱引用。
//另外的场景：一个属性可以是nil，另外一个属性不允许是nil，并有可能产生强引用环。这种场景下适合使用无主引用。
//但是，存在第三种场景：两个属性都必须有值，且初始化完成后不能为nil。这种场景下，则要一个类用无主引用属性，另一个类用隐式展开的可选属性。







