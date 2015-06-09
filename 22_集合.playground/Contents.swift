//: Playground - noun: a place where people can play

import UIKit

//定义结合
// 定义一个字符类型的集合，集合没有顺序
var letters = Set<Character>();
println(letters.count)

//添加元素到集合里
letters.insert("a")
//清空集合
letters = []

//初始化集合：
var zoon : Set<String> = ["狮子","老虎","斑马","长颈鹿"]
var other : Set = ["狮子","老虎","斑马","长颈鹿"]

//比较和判断
if(zoon == other){
    println("同一个动物园")
}
if(zoon.isEmpty){
    println("没有动物")
}else{
    println("有很多动物")
}

if(zoon.contains("老虎")){
    println("动物园有老虎")
}



//添加集合元素
zoon.insert("河马")

//迭代数据
println("nn\n动物园里有：")
for animal in zoon{
    print("\(animal) ")
}
println("\n\n排序后的动物园里有：")
for animal in sorted(zoon){
    print("\(animal) ")
}

var zoonA : Set<String> = ["狮子","老虎","斑马","长颈鹿"]
var zoonB : Set<String> = ["狮子","牛奶仔","斑马","羊咩仔"]
//1.交接:A和B共有
zoonA.intersect(zoonB)
//2.并集:A合并B
zoonA.union(zoonB)
//3.补集:A没有的合并B没有的
zoonA.exclusiveOr(zoonB)
//4.差集：B中没有A的部分
zoonA.subtract(zoonB)

//集合的比较
let zoon1: Set = ["🐶", "🐱"]
let zoon2: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let zoon3: Set = ["🐦", "🐭"]
//zoon1是zoon2的子集吗
zoon1.isSubsetOf(zoon2)
//zoon2是zoon1的父集吗
zoon2.isSupersetOf(zoon1)
//zoon2和zoon3有相同的值吗
zoon2.isDisjointWith(zoon2)






