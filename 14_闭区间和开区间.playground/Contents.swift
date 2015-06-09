//: Playground - noun: a place where people can play

import UIKit


//闭区间，从1949到2015，开区间用... 三个点
for year in (1949...2015){
    println("今年是\(year)年，热烈庆祝新中国成立\(year-1949)周年")
}

//开区间
var 群主名单 = ["波波","老镇","华仔","雨琪","希达"]

var 群主数量 = 群主名单.count
//开区间用..，两个点
for 群主编号 in 0..<群主名单.count{
    println("我们的群主有：\(群主名单[群主编号])")
}
