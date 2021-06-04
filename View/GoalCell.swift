//
//  GoalCell.swift
//  todoist
//
//  Created by Павел Тимофеев on 04.06.2021.
//

import UIKit

class GoalCell: UITableViewCell {

 
    @IBOutlet var goalProgress: UILabel!
    @IBOutlet var goalType: UILabel!
    @IBOutlet var goalDeskription: UILabel!
    
    
    func configureCell(description: String, type: String, goalprogressAmount: Int) {
        self.goalDeskription.text = description
        self.goalType.text = type
        guard goalProgress != nil else {return}
        self.goalProgress.text = String(describing: goalProgress)
        
    }
}
