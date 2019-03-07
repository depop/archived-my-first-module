//
//  Chat.swift
//  Dependencies
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Service

public protocol ChatModule {
    // Returns a new view controller used to show a list of conversations
    func conversationsScreen() -> UIViewController
    // Returns a new view controller used to chat with a user about a product (optional)
    func messagesScreen(user: User, product: Product?) -> UIViewController
    // Returns a new object which can be used to send a message on the background. See ChatMessageSender for more info.
    func messageSender(to receiver: User, about product: Product?) -> ChatMessageSender
}

// An object which can be used to send messages about a particular conversation.
public protocol ChatMessageSender {
    // Sends a new message with a body. The completion handler will be called upon completion. In case of success with a valid identifier for the new message created.
    func sendNewMessage(with body: String, completion: @escaping (_ messageId: String?) -> Void)
}

extension Dependencies {
    // Now we can obtain a ChatModule
    public var chatModule: ChatModule {
        return resolve(ChatModule.self)!
    }
}
