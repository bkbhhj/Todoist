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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        dissmissdetail()
    }
    
    @IBAction func shortTermButton(_ sender: Any) {
    }
    
    @IBAction func longTermButton(_ sender: Any) {
    }
    
    @IBAction func nextButton(_ sender: Any) {
    }
    
}
