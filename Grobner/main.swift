//
//  main.swift
//  Grobner
//
//  Created by Nikita on 01.12.2021.
//  Copyright © 2021 Cocos. All rights reserved.
//

import Foundation

let n = 9
var a:[Int16] = [1,2,3,4,5,6,7,8,9]
var b:[Int16] = [1,2,3,4,5,6,7,8,9]
var c:[Int16] = Array(repeating: 0, count: 9)
sum_array_int(&a, &b, &c, Int32(n))
print(c)
