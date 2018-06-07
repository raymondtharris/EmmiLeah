//
//  TitleViewController.swift
//  EmmiLeah
//
//  Created by Tim Harris on 2/4/18.
//  Copyright © 2018 Tim Harris. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {
    
    let arcadeButton:UIButton = {
       let button = UIButton()
        button.setTitle("Arcade", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        button.addTarget(self, action: #selector(handleArcadeSelection), for: .touchUpInside)
        return button
    }()
    let shopButton: UIButton = {
        let button = UIButton()
        button.setTitle("Shop", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        return button
    }()
    let settingsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Settings", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        let TitleTextView = UITextView()
        TitleTextView.textAlignment = .center
        TitleTextView.font = UIFont.systemFont(ofSize: 60)
        TitleTextView.backgroundColor = .none
        TitleTextView.text = "EmmiLeah"
        TitleTextView.textColor = .white
        
        view.addSubview(TitleTextView)
        TitleTextView.translatesAutoresizingMaskIntoConstraints = false
        TitleTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        TitleTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        TitleTextView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        TitleTextView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let BottomContainerView = UIView()
        BottomContainerView.backgroundColor = .white
        BottomContainerView.layer.cornerRadius = 10
        view.addSubview(BottomContainerView)
        
        BottomContainerView.translatesAutoresizingMaskIntoConstraints = false
        BottomContainerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        BottomContainerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        BottomContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        BottomContainerView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        
        BottomContainerView.addSubview(arcadeButton)
        arcadeButton.translatesAutoresizingMaskIntoConstraints = false
        arcadeButton.centerXAnchor.constraint(equalTo: BottomContainerView.centerXAnchor).isActive = true
        arcadeButton.topAnchor.constraint(equalTo: BottomContainerView.topAnchor, constant: 30).isActive = true
        arcadeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        arcadeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        BottomContainerView.addSubview(shopButton)
        shopButton.translatesAutoresizingMaskIntoConstraints = false
        shopButton.centerXAnchor.constraint(equalTo: BottomContainerView.centerXAnchor).isActive = true
        shopButton.topAnchor.constraint(equalTo: arcadeButton.bottomAnchor, constant: 25).isActive = true
        shopButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        shopButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        BottomContainerView.addSubview(settingsButton)
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.centerXAnchor.constraint(equalTo: BottomContainerView.centerXAnchor).isActive = true
        settingsButton.topAnchor.constraint(equalTo: shopButton.bottomAnchor, constant: 25).isActive = true
        settingsButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        settingsButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
    @objc func handleArcadeSelection(){
        print("Go To Selection Screen")
        let destinationController = SelectionViewController()
        self.show(destinationController, sender: nil)
    }
}
