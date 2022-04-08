//
//  CustomView.swift
//  UIKit-basic
//
//  Created by 1 on 2022/03/13.
//

import UIKit

class CustomView: UIView {

  
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        let myFrame = self.bounds
        
        context.setLineWidth(10)
        [UIColor.red, UIColor.green, UIColor.gray, UIColor.purple, UIColor.black].randomElement()?.set()
        
        UIRectFrame(myFrame.insetBy(dx: 10, dy: 10))
    }

}
