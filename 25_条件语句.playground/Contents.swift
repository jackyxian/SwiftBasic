//: Playground - noun: a place where people can play

import UIKit

//if语句
//1.单个条件
let 温度 = 10
if 温度 == 10{
    println("还行啊，一点点冷")
}
//2.两个条件
if 温度 > 11{
    println("不算很冷")
}else {
    println("还是很冷呢")
}
//3.N个条件
if 温度 > 11{
    println("不算很冷")
} else if 温度 < 10{
    println("还是很冷呢")
}else {
    println("还行啊，一点点冷")
}

//swift语句：
//1.可以多个值case，并且，可以不写break,这个默认会有，但是必须添加default值
let 动物 = "猴子"
switch 动物 {
    case "猪","猴子","羊": println("你是\(动物)")  //不用加break
    case "蛇","老鼠","鸡": println("你是\(动物)")
    //必须加默认值，要不然报错
    default: println("默认你是\(动物)")
}


//2.数字的switch
let 年收入 = 150_000
switch 年收入{
    case 30_000...60_000:println("码奴：工作一两年，租房混日子")
    case 60_001...100_000: println("码农：工作三四年，租房，继续混日子")
    case 100_001...200_000: println("IT民工：经理级别，基本无房，学会装波B，生活压力大")
    case 200_001...300_000: println("IT工程师：高级经理级别，有房贷，生活压力较大");
    case 300_001...500_000: println("IT人才：各IT公司总监级别人物，有房有车，生活压力相对较小")
    case 500_001...1000000: println("IT精英：各IT公司副总裁级别人物，包括COO、CTO等，大多为职业经理人，赚够前就跑。")
    case 1_000_001...10_000_000: println("IT大哥：不缺钱，行业里的羡慕嫉妒恨")
    case 10_000_001...100_000_000: println("IT领袖：任正非、马化腾、李彦宏、丁磊、马云等，包括期权股票以及投资理财等收入")
    default:println("码畜：刚毕业，租房傻乐")
}

//3.元组的switch
var guess = ("大",5)
switch guess{
    case ("大",6):println("开大，点数是6")
    case ("大",5):println("开大，点数是5")
    case ("大",4):println("开大，点数是4")
    case ("小",3):println("开大，点数是3")
    case ("小",2):println("开大，点数是2")
    case ("小",1):println("开大，点数是1")
    default:("没点，通杀")
}

//4.元组的值绑定
guess = ("小",3)
switch guess{
    case (let x, 6):println("开\(x)，点数是6")
    case ("大",let y):println("开大，点数是\(y)")
    case let(x,y):println("开\(x)，点数是\(y)")
}

//5.元组的值比较
guess = ("通杀",0)
switch guess{
    case let(x,y) where y>3 : println("开\(x)，点数是：\(y)")
    case let(x,y) where 0<y : println("开\(x)，点数是：\(y)")
    default :println("没点，通杀")
}



