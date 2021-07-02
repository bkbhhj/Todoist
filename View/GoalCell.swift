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
    
    
    func configureCell(goal: Goals) {
        self.goalDeskription.text = goal.goalDeskription
        self.goalType.text = goal.goalType
        self.goalProgress.text = String(describing: goal.goalProgress)
        
    }
}
