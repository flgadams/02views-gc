//
//  View2.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class View2: UIView {

     override func draw(_ rect: CGRect) {
        
         let gc = UIGraphicsGetCurrentContext()!
         gc.addEllipse(in: CGRect(x: 0, y: 0, width: 100, height: 100))
         gc.setFillColor(UIColor.blue.cgColor)
         gc.fillPath()
         
    }
    

}
