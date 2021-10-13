//
//  ViewController.swift
//  Empleado
//
//  Created by Ivet Acosta on 13/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var nombreEmpleadoLabel: UILabel!
    @IBOutlet weak var cargoLabel: UILabel!
    @IBOutlet weak var cargoEmpleadoLabel: UILabel!
    @IBOutlet weak var departamentoLabel: UILabel!
    @IBOutlet weak var departamentoEmpleadoLabel: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var edadEmpleadoLabel: UILabel!
    @IBOutlet weak var generarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
        let rand = Int.random(in: 18...30)
        let empleado = Empleado(foto: "Ivet.jpg", nombre: "Ivet", cargo: "Becaria", departamento: "Mobile", edad: rand )
        let cornerRadiusLabels: CGFloat = 7
        let borderWidthLabel: CGFloat = 0.5
        let cornerRadiusButton: CGFloat = 5
        
        fotoImageView.image = UIImage(named: empleado.foto)
        fotoImageView.layer.cornerRadius = fotoImageView.frame.height/2
        
        nombreEmpleadoLabel.text = empleado.nombre
        nombreEmpleadoLabel.layer.borderWidth = borderWidthLabel
        nombreEmpleadoLabel.layer.cornerRadius = cornerRadiusLabels
        
        cargoEmpleadoLabel.text = empleado.cargo
        cargoEmpleadoLabel.layer.borderWidth = borderWidthLabel
        cargoEmpleadoLabel.layer.cornerRadius = cornerRadiusLabels
        
        departamentoEmpleadoLabel.text = empleado.departamento
        departamentoEmpleadoLabel.layer.borderWidth = borderWidthLabel
        departamentoEmpleadoLabel.layer.cornerRadius = cornerRadiusLabels
        
        edadEmpleadoLabel.text = "\(empleado.edad)"
        edadEmpleadoLabel.layer.borderWidth = borderWidthLabel
        edadEmpleadoLabel.layer.cornerRadius = cornerRadiusLabels
        
        generarButton.layer.cornerRadius = cornerRadiusButton
        
    }
    
    @IBAction func generarButtonAction(_ sender: UIButton) {
    }
    


}

