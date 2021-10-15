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
        
        tableView.register(CustomHeader.self, forHeaderFooterViewReuseIdentifier: "employeeHeader")
        
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
        
        cell.employee = employeeTableModel.getEmployee(at: indexPath.row)
        cell.setEmployee()
            
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView,
            viewForHeaderInSection section: Int) -> UIView? {
        guard let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "employeeHeader") as? CustomHeader else {
        return UIView()
        }
        view.title.text = "Employee List"
        return view
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationVC = segue.destination as? EmployeeViewController {
            if let cell = sender as? EmployeeViewCell {
                let index = self.tableView.indexPath(for: cell)?.row ?? 0
                let employee = employeeTableModel.getEmployee(at: index)
                destinationVC.fillEmployeeInfo(with: employee)
            }
        }
    }
    
}
