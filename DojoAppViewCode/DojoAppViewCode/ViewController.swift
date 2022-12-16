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
        image.contentMode = .scaleAspectFit
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
    
    private let labelMessage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vamos começar?"
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.18, green: 0.192, blue: 0.227, alpha: 1)
        return label
    }()
    
    private let buttonStackView: UIStackView = {
       let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.spacing = 8
        return stackview
    }()
    
    private let buttonCreateAccount: UIButton = {
       let button = UIButton()
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }


}

