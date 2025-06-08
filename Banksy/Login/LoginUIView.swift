//
//  LoginUIView.swift
//  Banksy
//
//  Created by Mark Alford on 6/2/25.
//

import UIKit

// steps
/*
 1.
 */
class LoginUIView: UIView {
    // Stackviews are amazing
    let loginStackView = UIStackView()
    let titleText = UILabel()
    let subTitleText = UILabel()
    let userNameField = UITextField()
    let passwordField = UITextField()
    let loginButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // used for putting into a stackview
//    override var intrinsicContentSize: CGSize {
//        return CGSize(width: 200, height: 200)
//    }
    
}

extension LoginUIView {
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
        
        addSubview(loginStackView)
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        loginStackView.axis = .vertical
        loginStackView.spacing = 8
        loginStackView.addArrangedSubview(titleText)
        loginStackView.addArrangedSubview(subTitleText)
        loginStackView.addArrangedSubview(userNameField)
        loginStackView.addArrangedSubview(passwordField)
        
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.text = "Banksy"
        titleText.textAlignment = .center
        titleText.font = UIFont.boldSystemFont(ofSize: 32)
        
        subTitleText.translatesAutoresizingMaskIntoConstraints = false
        subTitleText.text = "Your money, in your hands, at all times."
        subTitleText.textAlignment = .center
        subTitleText.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        subTitleText.numberOfLines = 0
        
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        userNameField.placeholder = "Username"
        userNameField.delegate = self
        userNameField.borderStyle = .roundedRect
        
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.placeholder = "Password"
        passwordField.delegate = self
        passwordField.isSecureTextEntry = true
        passwordField.borderStyle = .roundedRect
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
  
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            // layout sttackview/s only
            loginStackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            loginStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: loginStackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: loginStackView.bottomAnchor, multiplier: 1)
        ])
    }
}


extension LoginUIView: UITextFieldDelegate {
    // when typing is done, end the editing
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameField.endEditing(true)
        passwordField.endEditing(true)
        return true
    }
    
    //
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if userNameField.text != "" {
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
}
