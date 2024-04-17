//
//  SignUpViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    // MARK: - Propetries
    
    private lazy var signUpStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 30
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        let headerLAbel = UIBuilder.createLabel(title: "SignUp", textColor: .white, textAlligment: .center, fontSize: .systemFont(ofSize: 60, weight: .bold, width: .standard))
        let fitLabelTop = UIBuilder.createLabel(title: "", textColor: .systemRed, textAlligment: .center, fontSize: .systemFont(ofSize: 60, weight: .bold, width: .compressed))
        let mailtextField = UIBuilder.createTextFiled(placeholder: "Enter email:", textSecure: false, keyboardType: .emailAddress)
        let passwordTextField = UIBuilder.createTextFiled(placeholder: "Enter password:", textSecure: true, keyboardType: .default)
        let confirnPasswordTextField = UIBuilder.createTextFiled(placeholder: "Confirm password:", textSecure: true, keyboardType: .default)
        let forgotPasswordButton = UIBuilder.createButton(title: "Forgot password?", setBackgroundColor: .clear, setTitleColor: .white, target: self, selector: #selector(goToTabBar))
       
        let goButton = UIBuilder.createButton(title: "Move to Tab Bar", setBackgroundColor: .systemBlue, setTitleColor: .white, target: self, selector: #selector(goToTabBar))
        [headerLAbel, fitLabelTop, mailtextField, passwordTextField,confirnPasswordTextField, forgotPasswordButton, goButton].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            stack.addArrangedSubview($0)
        }
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        setupUI()

        
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        view.addSubview(signUpStackView)
        NSLayoutConstraint.activate([
            signUpStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signUpStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            
        ])
    }
    
    // MARK: - Methods(Actions)
    
    @objc private func goToTabBar() {
        let tabBar = MainTabBarController()
        navigationController?.pushViewController(tabBar, animated: true)
    }
    

   

}
