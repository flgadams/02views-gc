//
//  View3.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class View3: UIView {

    override func draw(_ rect: CGRect) {
            
    }
    
   override  func draw(_ layer: CALayer, in ctx: CGContext) {
      // super.draw(layer, in: ctx)
       print("***in draw***")
        UIGraphicsPushContext(ctx)
        let p = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 100, height: 100))
       UIColor.green.setFill()
        p.fill()
        UIGraphicsPopContext()
   }
 
    

    /*
    override func draw(_ layer: CALayer, in con: CGContext) {
        print("in draw")
        con.addEllipse(in:CGRect(x: 0,y: 0,width: 100,height: 100))
        con.setFillColor(UIColor.blue.cgColor)
        con.fillPath()
    }
     */
    


}
