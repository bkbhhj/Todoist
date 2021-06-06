//
//  ViewController.swift
//  todoist
//
//  Created by Павел Тимофеев on 04.06.2021.
//

import UIKit
import CoreData

class ToDoIstVC: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        
    }


    @IBAction func addGoalWasPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {return}
        
presentDetail(viewControllerToPresent: createGoalVC)
    }
    
    
    
    
}

extension ToDoIstVC: UITabBarDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        
        cell.configureCell(description: "Eat salad evening", type: .shortTerm, goalprogressAmount: 2)
        return cell
    }
}
