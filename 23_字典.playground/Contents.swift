//: Playground - noun: a place where people can play

import UIKit

//字典的定义
var airportsA : [String:String] = ["成田机场":"123航班","东京机场":"711航班","北京机场":"BJ250航班"]
var airportsB = ["成田机场":"123航班","东京机场":"711航班","北京机场":"BJ250航班","上海机场":"SH480航班"]

//获取字典元素个数
airportsA.count
airportsB.count

//判断是否为空
if(airportsA.isEmpty){
    println("没有航班")
}else{
    println("有航班\(airportsA.count)个")
}

//插入数据
airportsA["福建机场"] = "FUXXOO"
//更改数据
airportsB["成田机场"] = "321航班"

//updateValue可以检查key是否存在，不存在返回nil，存在，返回key的更新前的值
let oldValue = airportsA.updateValue("新321航班", forKey: "成田机场")
airportsA["成田机场"]

//删除值
airportsA["东京机场"] = nil
airportsA["东京机场"]

//removeValueForKey，可以检查key是否存在再删除，不存在返回nil，能删除的话就返回被删除的值
airportsB.removeValueForKey("东京机场")
airportsB["东京机场"]

//迭代key和value
for(key,value)in airportsA{
    println("\(key):\(value)")
}

//迭代key
for key in airportsA.keys{
    println("\(key)")
}

//迭代value
for value in airportsA.values{
    println("\(value)")
}

//把keys转为数组
let air = airportsB.keys.array
//当然你也可以强制转换为[String]
let 航班 = [String](airportsB.values)



