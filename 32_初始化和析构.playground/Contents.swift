//: Playground - noun: a place where people can play

import UIKit

//初始化 - 默认构造器
struct 武器{
    var 持久:Int
    var 攻击力:Int
    var 主人:String
    
    //结构体可以不写构造器，自动提供
    
//    init(持久:Int, 攻击力:Int, 主人:String){
//        self.持久 = 持久
//        self.攻击力 = 攻击力
//        self.主人 = 主人
//    }
    
}
var 一把武器 = 武器(持久: 8, 攻击力: 10, 主人: "华仔")


class 女优 {
    var 年龄 : Int
    var 姓名 : String
    var 胸围 : Int
    var 腰围 : Int
    var 臀围 : Int
    var AV数量 = 0
    var 真实名字 : String?
    
    //主构造器只有一个init
    init(年龄:Int, 姓名: String, 胸围:Int, 腰围:Int, 臀围:Int){
        self.年龄 = 年龄
        self.姓名 = 姓名
        self.胸围 = 胸围
        self.腰围 = 腰围
        self.臀围 = 臀围
    }
    
    //便利构造器可以多个，添加关键字convenience
    convenience init(AV数量:Int,年龄:Int, 姓名: String, 胸围:Int, 腰围:Int, 臀围:Int){
        self.init(年龄: 年龄,姓名: 姓名,胸围: 胸围,腰围: 腰围,臀围: 臀围)
        self.AV数量 = 89
    }
    
    convenience init(真实名字:String, AV数量:Int,年龄:Int, 姓名: String, 胸围:Int, 腰围:Int, 臀围:Int){
        self.init(AV数量: AV数量,年龄: 年龄,姓名: 姓名,胸围: 胸围,腰围: 腰围,臀围: 臀围)
        self.真实名字 = 真实名字
    }
    
    //析构函数，一般不需要定义，Swift自动处理更好
//    deinit{
//        
//    }
    
    var 魅力值: Int{
        return AV数量 * (40 - self.年龄 + self.胸围 + 30 - self.腰围 + self.臀围)
    }
}


var 波多野结衣 = 女优(真实名字: "波多野结衣", AV数量: 250, 年龄: 29, 姓名: "波多野结衣", 胸围: 36, 腰围: 26, 臀围: 36)
波多野结衣.魅力值

