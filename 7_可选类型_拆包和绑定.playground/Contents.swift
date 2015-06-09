//: Playground - noun: a place where people can play

import UIKit
//可选拆包：要检查是否有nil值

let 安慰奖 = "50"
let 中奖金额 = 安慰奖.toInt()

//必须判断可选类型是否有值，不能为空才能继续操作
if (中奖金额 != nil){
    println("恭喜你，中了\(中奖金额)元！")
    //加了!号强行拆包
    println("恭喜你，中了\(中奖金额!)元！")
}else{
    println("没有中奖！")
}

//可选类型的绑定：
if var 临时金额 = 安慰奖.toInt(){
    //这样子就可以减少判断是否和nil和加!强行拆包
    println("恭喜你，中了\(临时金额)元！")
    println("获取的税后金额是：")
}else{
    println("没有中奖！")
}
