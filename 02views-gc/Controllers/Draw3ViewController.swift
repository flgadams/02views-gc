//
//  Draw3ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class Draw3ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
        let v3 = View3()
        v3.layer.setNeedsDisplay()
        v3.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        self.view.addSubview(v3)
        v3.backgroundColor = UIColor.white
        
        
    }
    
    
}



