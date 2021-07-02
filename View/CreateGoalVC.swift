//
//  CreateGoalVC.swift
//  todoist
//
//  Created by Павел Тимофеев on 05.06.2021.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
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
        goalTextView.delegate = self
        
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
        if goalTextView.text != "" && goalTextView.text != "Какова твоя задача?" {
            guard let finishVC = storyboard?.instantiateViewController(identifier: "Finish") as? finishTodoIst else {return}
            
            finishVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishVC)
        }
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}
