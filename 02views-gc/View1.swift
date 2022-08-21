//
//  View1.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class View1: UIView {

  
    override func draw(_ rect: CGRect) {
        
        let p = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 100, height: 100))
        UIColor.systemBlue.setFill()
        p.fill()
    }
 

}
