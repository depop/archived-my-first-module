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
    }
    
    func openChat() {
        let module = Dependencies.shared.chatModule
        let chatScreen = module.messagesScreen(user: user, product: nil)
        
        navigationController?.pushViewController(chatScreen, animated: true)
    }

}
