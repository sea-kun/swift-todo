//
//  ViewController.swift
//  TodoApp
//
//  Created by 小谷松海 on 2020/01/06.
//  Copyright © 2020 Kai Koyamatsu. All rights reserved.
//

import UIKit

struct Todo {
    let id:Int
    let title:String
    let body:String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var todoList: UITableView!

    let todos = [
        Todo(id: 6, title: "タイトル１", body: "内容１"),
        Todo(id: 7, title: "タイトル２", body: "内容２"),
        Todo(id: 8, title: "タイトル３", body: "内容３"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        todoList.register(UINib(nibName: "TodoTableViewCell", bundle: nil), forCellReuseIdentifier: "TodoTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableViewCell", for: indexPath) as! TodoTableViewCell
        cell.setCell(todo: todos[indexPath.row])
        return cell
    }
}

