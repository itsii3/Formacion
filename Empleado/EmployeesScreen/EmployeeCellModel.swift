//
//  EmployeeCellModel.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeCellModel {
    
    var employee: Employee = Employee(name: "", position: "", department: "", age: 0)
    
    func getEmployeeName() -> String {
        return employee.name
    }
    
    func getEmployeePosition() -> String {
        return employee.position
    }
    
}
