//
//  UIViewController+ extension.swift
//  todoist
//
//  Created by Павел Тимофеев on 06.06.2021.
//

import UIKit

extension UIViewController {
    
    func presentDetail(viewControllerToPresent: UIViewController) {
       
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
        
       
    }
    
    func dissmissdetail() {
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
        
    }
}


