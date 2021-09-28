//
//  ex4.swift
//  Extraining1
//
//  Created by Nguyễn Duy Hùng on 26/09/2021.
//

import Foundation

var listStudent : [Students] = []
func Ex4(){
    repeat{
        print("Welcome to Hungdz's class ! ")
        print("1: Add students")
        print("2: Change Nam to Dong")
        print("3: Change Ba to Dong")
        print("4: Remove Duc and Lan")
        print("5: Get class' info")
        print("What do you want?")
        
        let answerInp = Int(readLine() ?? "") ?? 0
        
        var xClass = Class(className: "Hungdz", classTeacher: "HungND", students: listStudent)
        switch answerInp{
        case 0: print("Do you want to solo yasuo ?")
            break;
        case 1:
            addStudents()
            break;
        case 2:
            for (index,student) in listStudent.enumerated() {
                if(student.studentName == "Nam"){
                    listStudent[index].studentName = "Dong"
                    print("Changed")
                }else{
                    print("Failure")
                }
            }
            break;
        case 3:
            for (index,student) in listStudent.enumerated() {
                if(student.studentName == "Ba"){
                    listStudent[index].studentName = "Dong"
                    print("Changed")
                }else{
                    print("Failure")
                }
            }
            break;
        case 4:
            for (index,student) in listStudent.enumerated() {
                if(student.studentName == "Duc" || student.studentName == "Lan"){
                    listStudent.remove(at: index)
                    print("Changed")
                }else{
                    print("Failure")
                }
            }
            break;
        case 5:
            print("--------------------------------------")
            print("")
            print("Class: \(xClass.className)")
            print("")
            print("--------------------------------------")
            print("Class'Teacher: \(xClass.classTeacher)")
            print("")
            print("--------------------------------------")
            print("Class'Student: \(xClass.students)")
            print("")
            print("--------------------------------------")
            break;
        default:
            print("No hope")
        }
    }while(true)
}

func addStudents (){
    let student1 = Students(studentName: "Nam", studentAge: "10", studentPhoneNumber: "0123123123")
    let student2 = Students(studentName: "Hoang", studentAge: "10", studentPhoneNumber: "0123123123")
    let student3 = Students(studentName: "Linh", studentAge: "10", studentPhoneNumber: "0123123123")
    let student4 = Students(studentName: "Huyen", studentAge: "10", studentPhoneNumber: "0123123123")
    let student5 = Students(studentName: "Duc", studentAge: "10", studentPhoneNumber: "0123123123")
    let student6 = Students(studentName: "Duong", studentAge: "10", studentPhoneNumber: "")
    let student7 = Students(studentName: "Tung", studentAge: "10", studentPhoneNumber: "")
    let student8 = Students(studentName: "Bac", studentAge: "10", studentPhoneNumber: "")
    let student9 = Students(studentName: "Thanh", studentAge: "10", studentPhoneNumber: "")
    let student10 = Students(studentName: "Nam", studentAge: "10", studentPhoneNumber: "")
    
    listStudent.append(student1);
    listStudent.append(student2);
    listStudent.append(student3);
    listStudent.append(student4);
    listStudent.append(student5);
    listStudent.append(student6);
    listStudent.append(student7);
    listStudent.append(student8);
    listStudent.append(student9);
    listStudent.append(student10);
}

struct Students {
    var studentName: String = ""
    var studentAge: String = ""
    var studentPhoneNumber: String? = ""
    
    init(){}
    init (studentName: String ,studentAge: String , studentPhoneNumber: String?){
        self.studentName = studentName
        self.studentAge = studentAge
        self.studentPhoneNumber = studentPhoneNumber ?? ""
    }
}

struct Class {
    var className: String = ""
    var classTeacher: String = ""
    var students: [Students] = []
    
    init (className: String ,classTeacher: String , students: [Students]){
        self.className = className
        self.classTeacher = classTeacher
        self.students = students
    }
    
    init (){}
}
