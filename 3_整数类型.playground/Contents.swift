//: Playground - noun: a place where people can play

import UIKit

let MIN_VALUE = UInt8.min
let MAC_VALUE = UInt8.max

//2的64次方，64位的机器，32位机器是，2的32次方
let INT_MIN_VALUE = Int.min
let INT_MAX_VALUE = Int.max

//所以尽量少用Int32和Int64，因为不同位的机器可能出错，也避免用UInt类型，尽量使用Int