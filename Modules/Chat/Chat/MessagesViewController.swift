//
//  MessagesViewController.swift
//  Chat
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Service
import Dependencies

class MessagesViewController: UIViewController {

    let user: User
    let product: Product?
    
    init(user: User, product: Product?) {
        self.user = user
        self.product = product
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Chat"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(openUserProfile))
        view.backgroundColor = UIColor.red
        showLabel()
    }
    
    private func showLabel() {
        // add a label with user and product data
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "\(user)\n\((product?.debugDescription ?? "no product"))"
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func openUserProfile() {
        let module = Dependencies.shared.userProfileModule
        let screen = module.userProfileScreen(user: user)
        navigationController?.pushViewController(screen, animated: true)
    }

}
