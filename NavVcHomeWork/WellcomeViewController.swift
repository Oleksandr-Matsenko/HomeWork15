//
//  ViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit

final class WellcomeViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var wellcomeStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        let wellcomeLabel = UIBuilder.createLabel(title: "Wellcome", textColor: .white, textAlligment: .center, fontSize: .systemFont(ofSize: 80, weight: .bold, width: .compressed))
        let fitLable = UIBuilder.createLabel(title: "", textColor: .clear, textAlligment: .natural, fontSize: .boldSystemFont(ofSize: 20))
        let signInButton = UIBuilder.createButton(title: "SignIn", setBackgroundColor: .systemBlue, setTitleColor: .white, target: self, selector: #selector(goToSignIn))
        let signUpButton = UIBuilder.createButton(title: "SignUp", setBackgroundColor: .blue, setTitleColor: .white, target: self, selector: #selector(goToSignUp))
        let skipButton = UIBuilder.createButton(title: "Skip", setBackgroundColor: .blue, setTitleColor: .white, target: self, selector: #selector(goToTabBarItem))
        // Add to main view subViews
        [wellcomeLabel,fitLable,signInButton, signUpButton, skipButton].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.heightAnchor.constraint(equalToConstant: 60).isActive = true
            stack.addArrangedSubview($0)
        }
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupUI()
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        view.addSubview(wellcomeStackView)
        
        NSLayoutConstraint.activate([
//            wellcomeStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            wellcomeStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            wellcomeStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            wellcomeStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            wellcomeStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    // MARK: - Methods(Actions)
    
    @objc private func goToSignIn(){
        let signInVC = SignInViewController()
        navigationController?.setViewControllers([signInVC], animated: true)
    }
    @objc private func goToSignUp(){
        let signUpVC = SignUpViewController()
        navigationController?.setViewControllers([signUpVC], animated: true)
    }
    @objc private func goToTabBarItem(){
        let tabBar = MainTabBarController()
        navigationController?.setViewControllers([tabBar], animated: true)
    }


}

