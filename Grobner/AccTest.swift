//
//  AccTest.swift
//  Grobner
//
//  Created by Nikita on 03.12.2021.
//  Copyright © 2021 Cocos. All rights reserved.
//

import Foundation
import Accelerate

func testAcc(){
    print("Hello, World!")

    let r = 1
    let s = 1000
    let s32 = Int32(s)
    var mon = Array(repeating: Array(repeating: 0.0, count: s), count: r)
    var out = Array(repeating: 0.0, count: s)
//    for j in 0..<r{
//        for i in 0..<s{
//            mon[j][i] = Double.random(in: 0...10)
//        }
//    }
    print("START")
    var start = Date().timeIntervalSince1970
    for j in 0..<r{
        let monj = mon[j]
        out = vDSP.add(monj,monj)
    }
    let elaps1 = Date().timeIntervalSince1970-start
    print(elaps1)

    start = Date().timeIntervalSince1970

    for j in 0..<r{
//        for i in 0..<s{
//            let g = mon[j][i]+mon[j][i]
//        }
        var monj = mon[j]
        sum_array_double(&monj, &monj, &out, s32)
    }

    let elaps2 = Date().timeIntervalSince1970-start
    print(elaps2)
    print(elaps2/elaps1)
    //933.3039361860742
    //746.1709006247789
    //1175.8274581786325
    //769.2829835082458
    //897.337663796331
}
