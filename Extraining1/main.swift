//
//  main.swift
//  Extraining1
//
//  Created by Nguyễn Duy Hùng on 26/09/2021.
//

import Foundation
repeat{
    print("1: Exercise 1")
    print("2: Exercise 2")
    print("3: Exercise 3")
    print("4: Exercise 4")
    print("5: Exercise 5")
    print("What do you want?")
    
    let answerInp = Int(readLine() ?? "") ?? 0
    
    switch answerInp{
    case 0: print("Do you want to solo yasuo ?")
        break;
    case 1:
        Ex1()
        break;
    case 2:
        Ex2()
        break;
    case 3:
        Ex3()
        break;
    case 4:
        Ex4()
        break;
    case 5:
        Ex5()
        break;
    default:
        print("No hope")
    }
}while(true)

