//
//  TableViewController.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeTableViewController: UITableViewController {
    
    private let cellIdentifier = "EmployeeViewCell"
    
    let employeeTableModel = EmployeeTableModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeTableModel.getEmployeesCount();
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? EmployeeViewCell else {
            return UITableViewCell()
        }
        
        guard let employee = employeeTableModel.getEmployee(at: indexPath.row)
        else {
            cell.employee = Employee(name: "", position: "", department: "", age: 0)
            cell.configureCell()
            return cell
        }
        cell.employee = employee
        cell.configureCell()
            
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationVC = segue.destination as? EmployeeViewController {
            if let cell = sender as? EmployeeViewCell {
                let index = self.tableView.indexPath(for: cell)?.row ?? 0
                guard let employee = employeeTableModel.getEmployee(at: index) else {
                    destinationVC.getEmployeeInfo(with: Employee(name: "", position: "", department: "", age: 0))
                    return
                }
                destinationVC.getEmployeeInfo(with: employee)
            }
        }
    }
    
}
