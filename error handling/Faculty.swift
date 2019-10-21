//
//  Faculty.swift
//  error handling
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation




enum FacultyError: Error
{
    case invalidSalary(salary:Double)
    case invalidSalary(message :String)
    case invalidEmployeeId(facultyId:Int)
    case InvalidFacultyName(facultyName:String)
}

class Faculty
{
     var facultyId :Int
    var facultyName:String
    var salary:Double
    
    init(facultyId :Int, facultyName:String,salary:Double)throws{
        if(facultyId<=0)
    {
    throw FacultyError.invalidEmployeeId(facultyId:facultyId)
    }
    self.facultyId = facultyId
        if(facultyName.count<=10)
        {
            throw FacultyError.InvalidFacultyName(facultyName:facultyName)
        }
        self.facultyName=facultyName
        
        if(salary<=1000)
        {
            throw FacultyError.invalidSalary(salary:salary)
        }
        self.salary=salary
    
    
    }
    func setSalary(salary:Double) throws {
        if(salary<=1000){
        throw FacultyError.invalidSalary(message: "invalid salary : \(salary) < 1000")
            
        
        }
          self.salary=salary
        
    }
    
    
    func setfacultyName(name:String) throws{
        print("****** Start ********")
        do
        {
            if name.count<10 {
                throw FacultyError.InvalidFacultyName(facultyName: name)
            }
            self.facultyName=name
            print("****** Name Set ******")
        }
        catch FacultyError.InvalidFacultyName(let facultyName)
        {
            print("Invalid Faculty Name: \(facultyName)")
        }
        catch
        {
            print(error.localizedDescription)
        }
         print("****** END ******")
    }
    
    
    
    
    
    
    
}
