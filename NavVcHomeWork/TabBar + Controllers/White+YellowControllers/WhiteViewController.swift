//
//  WhiteViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit

final class WhiteViewController: UIViewController {
    private lazy var goToNext = UIBuilder.createButton(title: "➠", setBackgroundColor: .clear, setTitleColor: .systemYellow, target: self, selector: #selector(goToLastScreen))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    @objc private func goToLastScreen() {
        let lastVC = YellowViewController()
        navigationController?.setViewControllers([lastVC], animated: true)
    }
    private func setupUI() {
        view.addSubview(goToNext)
        goToNext.titleLabel?.font = .systemFont(ofSize: 150, weight: .bold)
        
        NSLayoutConstraint.activate([
            goToNext.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            goToNext.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
 
   
}
