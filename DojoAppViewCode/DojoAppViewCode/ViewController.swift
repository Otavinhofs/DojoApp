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
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "backgroundImage")
        return image
    }()
    
    private let bottomStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.spacing = 36
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
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Criar sua conta", for: .normal)
        button.backgroundColor = UIColor(red: 0.329, green: 0, blue: 0.49, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Já tenho conta", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 22
        button.layer.borderWidth = 1.4
        button.layer.borderColor = UIColor(red: 0.329, green: 0, blue: 0.49, alpha: 1).cgColor
        button.setTitleColor(UIColor(red: 0.329, green: 0, blue: 0.49, alpha: 1), for: .normal)
        return button
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewHierarchy()
        setupViewConstraints()
        view.backgroundColor = .white
    }

    func setupViewHierarchy() {
        view.addSubview(parentStackView)
        parentStackView.addArrangedSubview(backgroundView)
        parentStackView.addArrangedSubview(bottomStackView)
        backgroundView.addSubview(backgroundImage)
        bottomStackView.addArrangedSubview(labelMessage)
        bottomStackView.addArrangedSubview(buttonStackView)
        buttonStackView.addArrangedSubview(buttonCreateAccount)
        buttonStackView.addArrangedSubview(buttonLogin)
    }
    
    func setupViewConstraints() {
        NSLayoutConstraint.activate([
            parentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            parentStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            parentStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -36),
            parentStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            backgroundImage.topAnchor.constraint(equalTo: backgroundView.topAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            
            buttonCreateAccount.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor, constant: 56),
            buttonCreateAccount.trailingAnchor.constraint(equalTo: buttonStackView.trailingAnchor, constant: -56),

            buttonLogin.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor, constant: 56),
            buttonLogin.trailingAnchor.constraint(equalTo: buttonStackView.trailingAnchor, constant: -56),
            
            buttonCreateAccount.heightAnchor.constraint(equalToConstant: 44),
            buttonLogin.heightAnchor.constraint(equalToConstant: 44),
            
            buttonStackView.trailingAnchor.constraint(equalTo: parentStackView.trailingAnchor),
            buttonStackView.leadingAnchor.constraint(equalTo: parentStackView.leadingAnchor)
            
        ])
    }
    
    func setupNavigationController(){
        navigationController?.navigationItem.rightBarButtonItems = [UIBarButtonItem(image: UIImage(named: "brasilButton"),style: .done,target: self, action: #selector(changeCountry))]
    }
    
    @objc func changeCountry(){
        
    }
}

