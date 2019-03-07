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
    }
    
    func openUserProfile() {
        let module = Dependencies.shared.userProfileModule
        let screen = module.userProfileScreen(user: user)
        navigationController?.pushViewController(screen, animated: true)
    }

}
