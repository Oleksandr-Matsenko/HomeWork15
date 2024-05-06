//
//  BrownViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit

final class BrownViewController: UIViewController {
    private lazy var goToNext = UIBuilder.createButton(title: "➠", setBackgroundColor: .clear, setTitleColor: .systemRed, target: self, selector: #selector(goToLastScreen))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        setupUI()
    }
    @objc private func goToLastScreen() {
        let lastVC = RedViewController()
        navigationController?.setViewControllers([lastVC], animated: true)
    }
    private func setupUI() {
        view.addSubview(goToNext)
        goToNext.titleLabel?.font = .systemFont(ofSize: 150, weight: .bold)
        
        NSLayoutConstraint.activate([
//            goToNext.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            goToNext.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            goToNext.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
 
}
