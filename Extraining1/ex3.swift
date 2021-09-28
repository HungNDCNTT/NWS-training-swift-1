//
//  ex3.swift
//  Extraining1
//
//  Created by Nguyễn Duy Hùng on 26/09/2021.
//

import Foundation
func Ex3(){
    print("Please input kilomets",terminator: ": ")
    let kms = Int(readLine() ?? "") ?? 0
    var moneys = 0
    if(kms <= 1){
        moneys = kms * 5000
    } else if (kms <= 30 && kms > 1){
        
        moneys = (kms - 1) * 4000 + 1 * 5000
    } else {
        moneys = 1 * 5000 + 29 * 4000 + (kms - 30) * 3000
    }
    
    print("Total moneys to run \(kms) Km are: \(moneys) VND")
}
