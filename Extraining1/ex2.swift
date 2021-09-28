//
//  ex2.swift
//  Extraining1
//
//  Created by Nguyễn Duy Hùng on 26/09/2021.
//

import Foundation
func Ex2(){
    print("Please input number <= 10000")
    
    var numInp: Int = 0
    var a = 0
    var max = 0
    numInp = Int(readLine() ?? "") ?? 0
    if(numInp > 10000){
        print("Fuck !! Please read carefully before input!")
        print("Please input number <= 10000")
        numInp = Int(readLine() ?? "") ?? 0
    }
    if(numInp == 0){
        max = 0
    }
    while (numInp > 0) {
        a = numInp % 10
        numInp /= 10
        if(a > max){
            max = a;
        }
        
    }
    
    print("Max: \(max)")
    
    
}
