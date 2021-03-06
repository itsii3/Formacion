//
//  ViewController.swift
//  Empleado
//
//  Created by Ivet Acosta on 13/10/2021.
//

import UIKit

class EmployeeViewController: UIViewController {
    
    @IBOutlet weak var photoEmployee: UIImageView!
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var nameEmployee: UILabel!
    @IBOutlet weak var positionTitle: UILabel!
    @IBOutlet weak var positionEmployee: UILabel!
    @IBOutlet weak var departmentTitle: UILabel!
    @IBOutlet weak var departmentEmployee: UILabel!
    @IBOutlet weak var ageTitle: UILabel!
    @IBOutlet weak var ageEmployee: UILabel!
    @IBOutlet weak var generateButton: UIButton!
        
    var employee: Employee = Employee()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fillEmployeeInfo(with: employee)
        
        imageViewLayout(photoEmployee)
        labelLayout(nameEmployee, positionEmployee, departmentEmployee, ageEmployee)
        buttonLayout(generateButton)
        
        generateButton.isEnabled = false
        
    }

    func imageViewLayout(_ images: UIImageView...) {
        for image in images {
            image.layer.cornerRadius = image.frame.height/2
        }
    }
    
    func labelLayout(_ labels: UILabel...) {
        for label in labels {
            label.layer.borderWidth = 0.5
            label.layer.cornerRadius = 7
        }
    }
    
    func buttonLayout(_ buttons: UIButton...) {
        for button in buttons {
            button.layer.cornerRadius = 5
        }
    }
    
    func getEmployeeInfo(with newEmployee: Employee) {
        employee = newEmployee
    }
    
    func fillEmployeeInfo(with employee: Employee) {
        
        photoEmployee.image = UIImage(named: employee.name)
        nameEmployee.text = employee.name
        positionEmployee.text = employee.position
        departmentEmployee.text = employee.department
        ageEmployee.text = "\(employee.age)"
        
    }
    
    @IBAction func generateButtonAction(_ sender: UIButton) {
        
        // let index = Int.random(in: 0..<employeeViewModel.getEmployeesCount())
        // fillEmployeeInfo(with: index)
        
    }
    

}

