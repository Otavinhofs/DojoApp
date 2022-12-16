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
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let bottomStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.spacing = 36
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }


}

