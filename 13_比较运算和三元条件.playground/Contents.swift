//: Playground - noun: a place where people can play

import UIKit

let 欢迎信息 = "欢迎学习Swift"

if(欢迎信息 == "欢迎学习Swift"){
    println("非常欢迎！")
}else{
    println("华仔无语了！")
}

let 批发价 = 30
let 是否会员 = false
let 基本加价 = 30
let 会员加价 = 10

let 最终价格 = 是否会员 ? 批发价 + 会员加价 : 批发价 + 基本加价
