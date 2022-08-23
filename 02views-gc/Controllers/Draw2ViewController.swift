//
//  Draw2ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class Draw2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        
        let v2 = View2(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        
        self.view.addSubview(v2)
        
    }
    

 

}
