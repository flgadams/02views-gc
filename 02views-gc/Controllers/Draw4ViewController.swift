//
//  Draw4ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class Draw4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .green
        
        let v4 = View4()
        self.view.addSubview(v4)
        v4.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        v4.backgroundColor = .white
    }
    


}
