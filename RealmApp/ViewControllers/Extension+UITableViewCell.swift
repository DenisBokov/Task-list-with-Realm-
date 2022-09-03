//
//  Extension+UITableViewCell.swift
//  RealmApp
//
//  Created by Denis Bokov on 03.09.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    func configureSecondaryText(with taskList: TaskList) {
        let currentTask = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.name
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currentTask.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = currentTask.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
