//
//  ViewController.swift
//  DojoAppViewCode
//
//  Created by Otávio da Silva on 16/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let parentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }


}

