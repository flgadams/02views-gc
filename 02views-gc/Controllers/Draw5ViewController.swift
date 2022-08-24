//
//  Draw5ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/21/22.
//

import UIKit

class Draw5ViewController: UIViewController {
    let iv = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        //Graphics Image Renderer creates a UIIMage
        
        let graphicsImageRenderer = UIGraphicsImageRenderer(size: CGSize(width: 100, height: 100))
        let blueImage = graphicsImageRenderer.image {
            _ in
            let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 50, height: 50))
            UIColor.blue.setFill()
            path.fill()
            
        }
        
        iv.image = blueImage
        iv.backgroundColor = .yellow
        self.view.addSubview(iv)
        self.view.backgroundColor = .white
        iv.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        iv.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
  
}
