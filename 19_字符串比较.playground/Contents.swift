//: Playground - noun: a place where people can play

import UIKit

var a = "xiaobo"
var b = "xiaobo"

if(a == b){
    println("相等")
}else{
    println("不相等")
}


let placeLists = ["上海市宝山区","上海市徐汇区","上海市普陀区","上海市崇明岛","大连市中山区","大连市旅顺口区","大连市小平区","深圳市南山区","上海市福田区","舟山市普陀区","塔什库尔干吉克自治县","首尔市江南区","鹤岗市南山区","台北市中山区","木垒哈萨克自治县","博尔塔拉蒙古自治州","巴音郭楞蒙古自治州","伊春市友好区","东京都港区","双鸭山市宝山区","抚远县黑瞎子岛","玛利亚群岛","舟山群岛","千岛群岛","关岛","南宁市江南区","新疆维吾尔自治区和田县"]


var 县数 = 0, 区数 = 0, 自治州数 = 0, 岛数 = 0, 宝山区数 = 0
var 上海列表 = [String]()
var 大连列表 = [String]()

for place in placeLists{
    if(place.hasSuffix("县")){
        ++县数
    }
    if(place.hasSuffix("区")){
        ++区数
    }
    if(place.hasSuffix("自治州")){
        ++自治州数
    }
    if(place.hasSuffix("岛")){
        ++岛数
    }
    if(place.hasSuffix("宝山区")){
        ++宝山区数
    }
    if(place.hasPrefix("上海")){
        上海列表.append(place)
    }
    if(place.hasPrefix("大连")){
        大连列表.append(place)
    }
    
}
println("一共有\(县数)个县，一共有\(区数)个区，一共有\(自治州数)个自治州，一共有\(岛数)个岛，一共有\(宝山区数)个宝山区")
for place in 上海列表{
    println("属于上海的有：\(place)")
}
for place in 大连列表{
    println("属于大连的有：\(place)")
}


//属于上海
//属于大连

//县数
//区数
//自治州数
//岛数
//宝山区数
