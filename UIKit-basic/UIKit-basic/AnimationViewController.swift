//
//  AnimationViewController.swift
//  UIKit-basic
//
//  Created by 1 on 2022/03/12.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var square: UIView!
    
    var animator: UIViewPropertyAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureAnimator()
    }
    
    private func configureAnimator() {
        self.animator = UIViewPropertyAnimator(duration: 3, curve: .linear) {
            self.square.backgroundColor = .yellow
        }
        self.animator.pausesOnCompletion = true
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.animator.startAnimation()
    }
}
