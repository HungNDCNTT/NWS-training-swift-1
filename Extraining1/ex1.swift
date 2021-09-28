//
//  ex1.swift
//  Extraining1
//
//  Created by Nguyễn Duy Hùng on 26/09/2021.
//

import Foundation

func Ex1 (){
    print("Please input time: ")
    print("Hour",terminator: ": ")
    var hour = Int(readLine() ?? "") ?? 0
    print("Min",terminator: ": ")
    var min = Int(readLine() ?? "") ?? 0
    print("Sec",terminator: ": ")
    var sec = Int(readLine() ?? "") ?? 0
    print("Please input X (X <= 10000)",terminator: ": ")
    var x = 0
    x =   Int(readLine() ?? "") ?? 0
    if(x > 10000) {
        print("Fuck !! Please read carefully before input!")
        print("Please input X (X <= 10000)",terminator: ": ")
        x = Int(readLine() ?? "") ?? 0
    }
    sec += x;
    while(sec >= 60){
        min += 1;
        sec -= 60;
    }
    while(min >= 60){
        hour += 1;
        min -= 60;
    }
    while(hour >= 12){
        hour -= 12;
    }
    print("After \(x) seconds times have format: \(hour):\(min):\(sec)")
}
