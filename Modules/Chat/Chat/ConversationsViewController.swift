//
//  ConversationsViewController.swift
//  Chat
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Service

class ConversationsViewController: UITableViewController {

    private var model: [ConversationModel]
    private var viewModel: [ConversationViewModel]
    
    init() {
        model = createModel()
        viewModel = createViewModel(model: model)
        super.init(style: .plain)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Your conversations"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "default")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath)
        cell.textLabel?.text = item.title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = model[indexPath.row]
        openChat(user: item.user, product: item.product)
    }
    
    func openChat(user: User, product: Product?) {
        let screen = MessagesViewController(user: user, product: product)
        navigationController?.pushViewController(screen, animated: true)
    }
}

private struct ConversationModel {
    let user: User
    let product: Product?
}

private struct ConversationViewModel {
    let title: String
}

private func createModel() -> [ConversationModel] {
    return [
        ConversationModel(user: User(identifier: "u1"), product: Product(identifier: "p1")),
        ConversationModel(user: User(identifier: "u2"), product: nil),
        ConversationModel(user: User(identifier: "u3"), product: nil),
    ]
}

private func createViewModel(model: [ConversationModel]) -> [ConversationViewModel] {
    return model.map({ item in
        let debugDescription = "\(item.user) - \((item.product?.debugDescription ?? "no product"))"
        return ConversationViewModel(title: debugDescription)
    })
}
