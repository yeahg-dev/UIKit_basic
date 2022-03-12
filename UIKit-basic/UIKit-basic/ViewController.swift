//
//  ViewController.swift
//  UIKit-basic
//
//  Created by 1 on 2022/03/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rectangularView: UIView!
    @IBOutlet weak var rectangularSubview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.printSubviewFrame()
//        self.adjustViewByInset()
//        self.adjustViewByOffset()
    }
    
    func adjustViewByInset() {
        print(self.rectangularView.frame)
        let inests = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        self.rectangularView.frame = rectangularView.frame.inset(by: inests)
        self.rectangularView.setNeedsDisplay()
        print(rectangularView.frame) // (87.0, 403.0, 240.0, 90.0)
    }
    
    func adjustViewByOffset() {
        print(self.rectangularView.frame)
        self.rectangularView.frame = rectangularView.frame.offsetBy(dx: 30, dy: 30)
        print(self.rectangularView.frame)
    }
    
    func printSubviewFrame() {
        print(self.rectangularView.frame)
        print(self.rectangularSubview.frame)
    }

}

