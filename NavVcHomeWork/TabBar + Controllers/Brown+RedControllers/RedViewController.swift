//
//  RedViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 17.04.2024.
//

import UIKit

final class RedViewController: UIViewController {
    private lazy var skipLastScreen = UIBuilder.createButton(title: "Back to Main", setBackgroundColor: .systemBlue, setTitleColor: .white, target: self, selector: #selector(skipToMain))


    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        view.backgroundColor = .systemRed
    }
    private func setupUI() {
        view.addSubview(skipLastScreen)
        
        NSLayoutConstraint.activate([
            skipLastScreen.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            skipLastScreen.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            skipLastScreen.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }

    @objc private func skipToMain() {
        let mainVC = WellcomeViewController()
        navigationController?.pushViewController(mainVC, animated: true)
    }

    

   
}
