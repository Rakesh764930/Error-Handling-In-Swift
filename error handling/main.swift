//
//  main.swift
//  error handling
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

do
{
    var f1: Faculty=try Faculty(facultyId: 10, facultyName: "Rakesh Kumar", salary: 1001)
print(f1.facultyName)
print(f1.facultyId)
print(f1.salary)
} catch FacultyError.invalidEmployeeId( let facultyId)
{
    print("Invalid Faculty Id: \(facultyId)")
}
catch FacultyError.InvalidFacultyName(let facultyName)
{
    print("Invalid Faculty Name : \(facultyName)")
}
catch FacultyError.invalidSalary(let salary)
{
    print("invalid Salary: \(salary)")
}
