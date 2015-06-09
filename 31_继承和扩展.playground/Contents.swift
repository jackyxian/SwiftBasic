//: Playground - noun: a place where people can play

import UIKit

//父类
class Car{
    var speed = 0
    var description : String{
        return "时速\(speed)公里每小时"
    }
    
    func sound(){
        
    }
    
}
let aCar = Car()
aCar.description


//子类
class 自行车: Car{
    var 有篮子 = false
}
let 一辆自行车 = 自行车()
一辆自行车.有篮子 = true
一辆自行车.speed = 25
一辆自行车.description


//子类的最终类，其他人就不能再继续情侣自行车类了
final class 情侣自行车: 自行车{
    var 当前乘客数 = 0
}
let 一辆情侣自行车 = 情侣自行车()
一辆情侣自行车.当前乘客数 = 2
一辆情侣自行车.speed = 15
一辆情侣自行车.description

//子类重载父类的方法
class 动车: Car{
    //重载方法
    override func sound(){
        print("嘟---嘟---嘟")
    }
}
let 一辆动车 = 动车()
一辆动车.sound()

//子类重载父类的计算属性
class 汽车: Car{
    var 轮子数 = 0
    
    override var description:String{
        //调用父类的方法
        return super.description + ",有\(轮子数)个轮子"
    }
    
    //只能重载方法、计算属性，一般字段不能重载
    override var speed:Int{
        //属性监视器
        didSet{
            if(speed > 120){
                println("警告：你速度超过120公里每小时，为了您的安全，请进入自动驾驶模式！")
            }
        }
    }
    
}
let 一辆汽车 = 汽车()
一辆汽车.轮子数 = 4
一辆汽车.speed = 150
一辆汽车.description



//扩展
//--已存在的类/结构体/枚举类型,通常用于
//1.源代码不可知的情况
//2.把复杂的类分解，提高可维护性

extension Double{
    var rmb: Double{
        return self * 0.0597
    }
}
//日本人均月薪31万4150日元
314_150.rmb


//整数自行平方
extension Int{
    //结构体的变异方法
    mutating func 平方(){
        self *= self
    }
}
var 一个整数 = 1024
一个整数.平方()




























