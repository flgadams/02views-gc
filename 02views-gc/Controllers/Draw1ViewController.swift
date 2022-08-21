//
//  Draw1ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class Draw1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .green
        
        let v1 = View1(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        self.view.addSubview(v1)
        
        
    }
    

 

}
