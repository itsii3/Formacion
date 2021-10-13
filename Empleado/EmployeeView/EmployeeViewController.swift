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
    
    let employeeViewModel = EmployeeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fillEmployeeInfo(with: 0)
        
        imageViewLayout(photoEmployee)
        labelLayout(nameEmployee, positionEmployee, departmentEmployee, ageEmployee)
        buttonLayout(generateButton)
        
        
    }

    func imageViewLayout(_ myImages: UIImageView...) {
        for myImage in myImages {
            myImage.layer.cornerRadius = myImage.frame.height/2
        }
    }
    
    func labelLayout(_ myLabels: UILabel...) {
        for myLabel in myLabels {
            myLabel.layer.borderWidth = 0.5
            myLabel.layer.cornerRadius = 7
        }
    }
    
    func buttonLayout(_ myButtons: UIButton...) {
        for myButton in myButtons {
            myButton.layer.cornerRadius = 5
        }
    }
    
    func fillEmployeeInfo(with index: Int) {
        
        photoEmployee.image = UIImage(named: employeeViewModel.getEmployeePhoto(of: index))
        nameEmployee.text = employeeViewModel.getEmployeeName(of: index)
        positionEmployee.text = employeeViewModel.getEmployeePosition(of: index)
        departmentEmployee.text = employeeViewModel.getEmployeeDepartment(of: index)
        ageEmployee.text = "\(employeeViewModel.getEmployeeAge(of: index))"
        
    }
    
    @IBAction func generateButtonAction(_ sender: UIButton) {
        
        let index = Int.random(in: 1..<employeeViewModel.getEmployeesCount())
        fillEmployeeInfo(with: index)
        
    }
    

}

