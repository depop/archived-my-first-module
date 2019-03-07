//
//  UserProfileModule.swift
//  UserProfile
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Dependencies
import Service

public class UserProfileModule: UserProfileModuleProtocol {
    
    public init() {}
    
    public func userProfileScreen(user: User) -> UIViewController {
        return UserProfileViewController(user: user)
    }
}
