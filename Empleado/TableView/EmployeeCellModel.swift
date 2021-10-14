//
//  EmployeeCellModel.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeCellModel {
    
    let employees = [
        Employee(name: "Ivet", position: "Becaria", department: "Mobile", age: 22),
        Employee(name: "Rita", position: "iOS Developer", department: "Mobile", age: 26),
        Employee(name: "Sergi", position: "Diseñador", department: "Design", age: 31)
    ]
    
    func getEmployeesCount() -> Int {
        return employees.count
    }
    
    func getEmployeePhoto(of employee: Int) -> String {
        return "\(employees[employee].name).jpg"
    }
    
    func getEmployeeName(of employee: Int) -> String {
        return employees[employee].name
    }
    
    func getEmployeePosition(of employee: Int) -> String {
        return employees[employee].position
    }
    
}
