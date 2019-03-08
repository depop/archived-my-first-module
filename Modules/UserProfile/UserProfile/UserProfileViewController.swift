//
//  UserProfileViewController.swift
//  UserProfile
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Dependencies
import Service

class UserProfileViewController: UIViewController {

    let user: User
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Chat", style: .plain, target: self, action: #selector(openChat))
        showLabel()
    }
    
    private func showLabel() {
        // add a label with user data
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = UIColor.yellow
        label.text = user.debugDescription
        label.font = UIFont.systemFont(ofSize: 30)
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func openChat() {
        let module = Dependencies.shared.chatModule
        let chatScreen = module.messagesScreen(user: user, product: nil)
        
        navigationController?.pushViewController(chatScreen, animated: true)
    }

}
