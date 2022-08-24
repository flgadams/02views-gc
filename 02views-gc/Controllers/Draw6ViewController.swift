//
//  Draw6ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class Draw6ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red

        let imageRenderer = UIGraphicsImageRenderer(size: CGSize(width: 100, height: 100))
       
        let blueImage = imageRenderer.image {
            _  in
            let gc = UIGraphicsGetCurrentContext()!
            gc.addEllipse(in: CGRect(x: 0, y: 0, width: 100, height: 100))
            gc.setFillColor(UIColor.blue.cgColor)
            gc.fillPath()
            
        }
        
        let iv = UIImageView(image: blueImage)
        self.view.addSubview(iv)
        iv.contentMode = .scaleToFill
        iv.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        
    }
    


}
