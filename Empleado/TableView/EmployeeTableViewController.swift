//
//  TableViewController.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeTableViewController: UITableViewController {
    
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
        
        let cellIdentifier = "EmployeeViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! EmployeeViewCell
        
        cell.employee = employeeTableModel.getEmployee(at: indexPath.row)
        cell.setEmployee()
        
        imageViewLayout(cell.photoEmployee)
        
        return cell
        
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
    
    func imageViewLayout(_ myImages: UIImageView...) {
        for myImage in myImages {
            myImage.layer.cornerRadius = myImage.frame.height/2
        }
    }
    
}
