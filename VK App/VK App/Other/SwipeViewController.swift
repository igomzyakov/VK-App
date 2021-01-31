//
//  SwipeViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 15.01.2021.
//

import UIKit

class SwipeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(closeViewController))
        swipeRecognizer.direction = .down
        view.addGestureRecognizer(swipeRecognizer)
        
    }
    
    @objc private func closeViewController() {
        if self.navigationController != nil {
            navigationController?.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
}
