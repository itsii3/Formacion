//
//  CustomHeader.swift
//  Empleado
//
//  Created by Ivet Acosta on 15/10/2021.
//

import UIKit

class CustomHeader: UITableViewHeaderFooterView {
    
    let title = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    // Why ???????
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContents() {
                
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)
        
        let font = UIFont.systemFont(ofSize: 40, weight: .bold)
        title.font = font

        NSLayoutConstraint.activate([
            title.heightAnchor.constraint(equalToConstant: 50),
            title.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: 5),
            title.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
            title.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: 0)
        ])

    }
    
}
