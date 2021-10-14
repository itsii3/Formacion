//
//  TableViewController.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeTableViewController: UITableViewController {
    
    let employeeCellModel = EmployeeCellModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeCellModel.getEmployeesCount();
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "EmployeeViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! EmployeeViewCell
        
        cell.photoEmployee.image = UIImage(named: employeeCellModel.getEmployeePhoto(of: indexPath.row))
        cell.nameEmployee.text = employeeCellModel.getEmployeeName(of: indexPath.row)
        cell.positionEmployee.text = employeeCellModel.getEmployeePosition(of: indexPath.row)
        
        imageViewLayout(cell.photoEmployee)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapEmployee(_:)))
        tapGestureRecognizer.cancelsTouchesInView = false
        cell.addGestureRecognizer(tapGestureRecognizer)
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let employeeViewController = EmployeeViewController()
        //employeeViewController.fillEmployeeInfo(with: indexPath.row)
        performSegue(withIdentifier: "segueToEmployee", sender: nil)
        
    }
    
    func imageViewLayout(_ myImages: UIImageView...) {
        for myImage in myImages {
            myImage.layer.cornerRadius = myImage.frame.height/2
        }
    }
    
    @objc func didTapEmployee(_ sender: UITapGestureRecognizer) {
        
        // performSegue(withIdentifier: "segueToEmployee", sender: nil)
        
    }
    
    
}
