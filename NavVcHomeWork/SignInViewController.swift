//
//  SignInViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit

final class SignInViewController: UIViewController {
    
    // MARK: - Propetries
    
    private lazy var signInStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 30
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        let headerLAbel = UIBuilder.createLabel(title: "SignIN", textColor: .white, textAlligment: .center, fontSize: .systemFont(ofSize: 60, weight: .bold, width: .standard))
        let fitLabelTop = UIBuilder.createLabel(title: "", textColor: .systemRed, textAlligment: .center, fontSize: .systemFont(ofSize: 60, weight: .bold, width: .compressed))
        let mailtextField = UIBuilder.createTextFiled(placeholder: "Enter email:", textSecure: false, keyboardType: .emailAddress)
        let passwordTextField = UIBuilder.createTextFiled(placeholder: "Enter password:", textSecure: true, keyboardType: .default)
        let fitLabelBot = UIBuilder.createLabel(title: "", textColor: .systemRed, textAlligment: .center, fontSize: .systemFont(ofSize: 60, weight: .bold, width: .compressed))
        let goButton = UIBuilder.createButton(title: "Move to Tab Bar", setBackgroundColor: .systemBlue, setTitleColor: .white, target: self, selector: #selector(goToTabBar))
        [headerLAbel, fitLabelTop, mailtextField, passwordTextField, fitLabelBot, goButton].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            stack.addArrangedSubview($0)
        }
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        setupUI()
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        view.addSubview(signInStackView)
        NSLayoutConstraint.activate([
            signInStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signInStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signInStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    // MARK: - Methods(Actions)
    
    @objc private func goToTabBar() {
        let tabBar = MainTabBarController()
        navigationController?.setViewControllers([tabBar], animated:  true)
    }
    

}
