//
//  TabBarViewController.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    // MARK: - ViewControllers
    
    let whiteVC = WhiteViewController()
    let brownVC = BrownViewController()
    let blackVC = BlackViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupTabBar()
    }
    
    // MARK: - Setup Tab Bar
    
    private func setupTabBar() {
        configureTabBarItem(for: whiteVC, title: "White Controller", imageName: "gear")
        configureTabBarItem(for: brownVC, title: "Brown Controller", imageName: "person.2.badge.gearshape.fill")
        configureTabBarItem(for: blackVC, title: "Black Controller", imageName: "person.2.badge.gearshape")
        
        self.viewControllers = [whiteVC, brownVC, blackVC]
        self.selectedIndex = 1
        self.tabBar.setupAppearence()
        
    }
    
    // MARK: - Helper Methods
    
    private func configureTabBarItem(for viewController: UIViewController, title: String, imageName: String) {
        viewController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: imageName), selectedImage: nil)
    }
    
}
extension UITabBar {
    func setupAppearence() {
        self.tintColor = .systemRed
        self.barTintColor = .red
        self.backgroundColor = .systemBackground
        self.isTranslucent = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray.cgColor

    }
}
