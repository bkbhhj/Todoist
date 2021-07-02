//
//  finishTodoIst.swift
//  todoist
//
//  Created by Павел Тимофеев on 17.06.2021.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

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
       
        if scoreTextField.text != "" {
            self.save {
                (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dissmissdetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goals(context: managedContext)
        
        goal.goalDeskription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalprogress = Int32(scoreTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do{
           try  managedContext.save()
            print("Ваши данные успешно сохранены!")
            completion(true)

        }
        catch {
            debugPrint("Ошибка: \(error.localizedDescription)")
            completion(false)

        }
     
    }
}
