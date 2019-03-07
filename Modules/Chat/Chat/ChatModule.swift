//
//  ChatModule.swift
//  Chat
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Dependencies
import Service

public class ChatModule: ChatModuleProtocol {
    public init() {}
    
    public func messageSender(to receiver: User, about product: Product?) -> ChatMessageSender {
        // configure and return an object for sending a msg in the background
        return MessageSender()
    }
    
    public func conversationsScreen() -> UIViewController {
        // configure and return a view controller
        return ConversationsViewController()
    }
    
    public func messagesScreen(user: User, product: Product?) -> UIViewController {
        // configure and return a view controller
        return MessagesViewController(user: user, product: product)
    }
}

private class MessageSender: ChatMessageSender {
    
    func sendNewMessage(with body: String, completion: @escaping (String?) -> Void) {
        // provide an implementation here
    }
}
