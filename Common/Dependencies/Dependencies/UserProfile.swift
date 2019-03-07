//
//  UserProfile.swift
//  Dependencies
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Service

public protocol UserProfileModuleProtocol {
    func userProfileScreen(user: User) -> UIViewController
}

extension Dependencies {
    // Now we can obtain a ChatModule
    public var userProfileModule: UserProfileModuleProtocol {
        return resolve(UserProfileModuleProtocol.self)!
    }
}
