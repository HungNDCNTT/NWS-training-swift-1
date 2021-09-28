//
//  ex5.swift
//  Extraining1
//
//  Created by Nguyễn Duy Hùng on 26/09/2021.
//

import Foundation
func Ex5 (){
    var num = 0
    var temp1 = 0
    var temp2 = 0
    var rem = 0
    var sum_pow = 0.0
    
    for cc in 1...1000 {
        temp1 = cc
        temp2 = cc
        
        while (temp1 != 0){
            temp1 /= 10
            num += 1
        }
        
        while (temp2 != 0){
            rem = temp2 % 10
            sum_pow += pow(Double(rem), Double(num))
            temp2 /= 10
        }
        if(Int(sum_pow) == cc){
            print("Armsstrong: \(cc)")
        }
        num = 0
        sum_pow = 0
    }
}
