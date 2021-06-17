//
//  finishTodoIst.swift
//  todoist
//
//  Created by Павел Тимофеев on 17.06.2021.
//

import UIKit

class finishTodoIst: UIViewController, UITextFieldDelegate {

    @IBOutlet var createGoalButton: UIButton!
    @IBOutlet var scoreTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        scoreTextField.delegate = self
    }
    

    @IBAction func createGoalButton(_ sender: Any) {
        // Pass data
    }
    
}
