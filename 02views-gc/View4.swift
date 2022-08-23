//
//  View4.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit

class View4: UIView {

    override func draw(_ rect: CGRect) {
        // you must have this unless you
        // set layer.SetNeedsDisplay() in the vc
    }
    
    override func draw(_ layer: CALayer, in con: CGContext) {
        print("in draw")
        con.addEllipse(in:CGRect(x: 0,y: 0,width: 100,height: 100))
        con.setFillColor(UIColor.orange.cgColor)
        con.fillPath()
    }
    
    


}
