//
//  EmployeeTableModel.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeTableModel {
    
    private let employees = [
        Employee(name: "Ivet", position: "Becaria", department: "Mobile", age: 22),
        Employee(name: "Rita", position: "iOS Developer", department: "Mobile", age: 26),
        Employee(name: "Sergi", position: "Diseñador", department: "Design", age: 31)
    ]
    
    func getEmployeesCount() -> Int {
        return employees.count
    }
    
    func getEmployee(at index: Int) -> Employee {
        return employees[index]
    }
    
}
