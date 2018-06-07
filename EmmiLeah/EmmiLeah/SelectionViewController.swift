//
//  SelectionViewController.swift
//  EmmiLeah
//
//  Created by Tim Harris on 2/5/18.
//  Copyright © 2018 Tim Harris. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        button.backgroundColor  = .red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let BottomContainerView = UIView()
        BottomContainerView.backgroundColor = .white
        BottomContainerView.layer.cornerRadius = 10
        view.addSubview(BottomContainerView)
        BottomContainerView.translatesAutoresizingMaskIntoConstraints = false
        BottomContainerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        BottomContainerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        BottomContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        BottomContainerView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        
        BottomContainerView.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.leadingAnchor.constraint(equalTo: BottomContainerView.leadingAnchor, constant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: BottomContainerView.bottomAnchor, constant: -30).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        backButton.layer.cornerRadius = 30
        
    }
}
