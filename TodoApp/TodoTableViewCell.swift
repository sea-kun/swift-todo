//
//  TodoTableViewCell.swift
//  TodoApp
//
//  Created by 小谷松海 on 2020/01/06.
//  Copyright © 2020 Kai Koyamatsu. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(todo: Todo) {
        self.title.text = todo.title
        self.body.text = todo.body
    }
}
