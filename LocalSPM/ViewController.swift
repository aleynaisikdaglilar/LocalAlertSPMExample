//
//  ViewController.swift
//  LocalSPM
//
//  Created by Aleyna Isikdaglilar [Ing Teknoloji A.S.-Tuzel Bankacilik Dijital Squad 1] on 25.09.2023.
//

import UIKit
import ButtonPackage

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Test Button", for: .normal)
        button.addTarget(self, action: #selector(alert), for: .touchUpInside)
        return button
    }()
    
    @objc func alert() {
        let alert = AlertPackage()
        alert.alert(fromController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

