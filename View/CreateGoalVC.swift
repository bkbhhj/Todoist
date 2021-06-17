//
//  CreateGoalVC.swift
//  todoist
//
//  Created by Павел Тимофеев on 05.06.2021.
//

import UIKit

class CreateGoalVC: UIViewController {
    @IBOutlet var goalTextView: UITextView!
    @IBOutlet var shortTermButton: UIButton!
    @IBOutlet var longTermButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedButton()
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        dissmissdetail()
    }
    
    @IBAction func shortTermButton(_ sender: Any) {
        goalType = .shortTerm
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedButton()
    }
    
    @IBAction func longTermButton(_ sender: Any) {
        goalType = .longTerm
        longTermButton.setSelectedColor()
        shortTermButton.setDeselectedButton()
    }
    
    @IBAction func nextButton(_ sender: Any) {
    }
    
}
