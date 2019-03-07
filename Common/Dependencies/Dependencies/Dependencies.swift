//
//  Dependencies.swift
//  Dependencies
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import Utils

public final class Dependencies: DependencyManager {
    // We expose this to every modules via a singleton
    public static let shared = Dependencies()
}
