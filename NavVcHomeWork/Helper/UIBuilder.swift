//
//  UIBuilder.swift
//  NavVcHomeWork
//
//  Created by Alex Matsenko on 16.04.2024.
//

import UIKit
struct UIBuilder {
    static func createLabel(title: String, textColor: UIColor, textAlligment: NSTextAlignment, fontSize: UIFont) -> UILabel {
        let label = UILabel()
        label.text = title
        label.numberOfLines = 0
        label.font = fontSize
        label.textAlignment = textAlligment
        label.textColor = textColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    static func createButton(title: String, setBackgroundColor: UIColor, setTitleColor: UIColor, target: Any?, selector: Selector) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = 20
        button.setTitleColor(setTitleColor, for: .normal)
        button.layer.backgroundColor = setBackgroundColor.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.addTarget(target, action: selector, for: .touchUpInside)
        return button
    }
    static func createTextFiled(placeholder: String, textSecure: Bool, keyboardType: UIKeyboardType) -> UITextField {
        let text = UITextField()
        text.placeholder = placeholder
        text.borderStyle = .roundedRect
        text.keyboardType = keyboardType
        text.isSecureTextEntry = textSecure
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
}
