//
//  EmployeeViewModel.swift
//  Empleado
//
//  Created by Ivet Acosta on 13/10/2021.
//

import UIKit

class EmployeeViewModel {
    
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
    
    func getEmployeeDepartment(of employee: Int) -> String {
        return employees[employee].department
    }
    
    func getEmployeeAge(of employee: Int) -> Int {
        return employees[employee].age
    }
    
}
