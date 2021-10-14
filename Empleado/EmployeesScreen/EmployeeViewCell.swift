//
//  EmployeeCellView.swift
//  Empleado
//
//  Created by Ivet Acosta on 14/10/2021.
//

import UIKit

class EmployeeViewCell: UITableViewCell {
    
    var employee: Employee?
    
    @IBOutlet weak var photoEmployee: UIImageView!
    @IBOutlet weak var nameEmployee: UILabel!
    @IBOutlet weak var positionEmployee: UILabel!
    
    func setEmployee() {
        
        photoEmployee.layer.cornerRadius = photoEmployee.frame.height/2
        photoEmployee.image = UIImage(named: employee?.name ?? "")
        nameEmployee.text = employee?.name ?? ""
        positionEmployee.text = employee?.position ?? ""
        
        
    }
    
    
}
