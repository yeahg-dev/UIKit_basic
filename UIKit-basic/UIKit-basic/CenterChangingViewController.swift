//
//  CenterChangingViewController.swift
//  UIKit-basic
//
//  Created by 1 on 2022/04/08.
//

import UIKit

class CenterChangingViewController: UIViewController {

    @IBOutlet weak var subviewOriginLabel: UILabel!
    @IBOutlet weak var subviewCenterLabel: UILabel!
    @IBOutlet weak var graySuperView: UIView!
    @IBOutlet weak var yellowSubview: UIView!
    
    @IBAction func moveCenter(_ sender: Any) {
        self.yellowSubview.center = CGPoint(x: 100, y: 100)
        self.subviewCenterLabel.text = self.yellowSubview.center.debugDescription
        self.subviewOriginLabel.text = self.yellowSubview.frame.origin.debugDescription
    }
    
    
    override func viewDidLoad() {
        subviewCenterLabel.text = self.yellowSubview.center.debugDescription
        subviewOriginLabel.text = self.yellowSubview.frame.origin.debugDescription
    }
}
