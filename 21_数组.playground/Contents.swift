//: Playground - noun: a place where people can play

import UIKit
//创建数组
var peoples = [String]()

//创建多少个相同值的数组
var teacher = [String](count: 100, repeatedValue: "我要加薪")



var road1 = ["香洲总站","南坑","桃园新村","银桦新村","新村","南村","香洲区府"]
road1.count
if(road1.isEmpty){
    println("站点为空")
}
else{
    println("有\(road1.count)个站")
}

//添加站点
road1.append("红山")

//按指定循序插入相关数据
road1.insert("安居园", atIndex:0)

//一次添加多个元素
road1 += ["北岭","华侨宾馆","拱北万佳","拱北"]


for road in road1{
    print(road + " ")
}

println("\n\n更新后")

//更改里面的数据
road1[0] = "凤凰北"

//多个更新
road1[4...6] = ["中山亭","前山西门","白石"]

for road in road1{
    print(road + " ")
}

//移动数组，正确操作后返回被移除的值
road1.removeAtIndex(3)
road1.removeLast()

println("\n\n删除后")

//迭代数组序号和值（把数组分解成元组类型，一个Int，一个String）
for (index,value) in enumerate(road1){
    println("第\(index+1)站的名字是：\(value)")
}



