//
//  ViewController.swift
//  Banksy
//
//  Created by Mark Alford on 6/2/25.
//

import UIKit

class LoginViewController: UIViewController {
    let loginView = LoginUIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        style()
        layout()
    }

}

extension LoginViewController {
    func style () {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginView)
        view.backgroundColor = .systemBackground
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            // dynamically spacing by 8px
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            // switch around for the right side
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1),
        ])
    }
}
