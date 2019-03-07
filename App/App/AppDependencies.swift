//
//  AppDependencies.swift
//  App
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Dependencies
import Chat

func setUpDependencies() {
    // register dependencies here
    let dependencies = Dependencies.shared
    
    dependencies.register(ChatModuleProtocol.self) { 
        return ChatModule()
    }

}
