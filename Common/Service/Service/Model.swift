//
//  User.swift
//  Service
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit

public struct User {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}

public struct Product {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}

extension User: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "<User \(identifier)>"
    }
}

extension Product: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "<Product \(identifier)>"
    }
}
