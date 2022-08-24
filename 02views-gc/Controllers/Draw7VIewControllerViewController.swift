//
//  Draw7VIewControllerViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit

class Draw7VIewControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        let marsImage = UIImage(named: "mars")!
        let sizeOfMars = marsImage.size
        let imageRenderer = UIGraphicsImageRenderer(
            size: CGSize(width: sizeOfMars.width*2, height: sizeOfMars.height),
            format: marsImage.imageRendererFormat)
        let imageOfTwoMars = imageRenderer.image {
            _ in
            marsImage.draw(at: CGPoint(x: 0,y: 0))
            marsImage.draw(at: CGPoint(x: sizeOfMars.width, y: 0))
        }
        let imageView = UIImageView(image: imageOfTwoMars)
        self.view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: sizeOfMars.width*2, height: sizeOfMars.height)
        print(sizeOfMars.width, sizeOfMars.height)
        
        
    }
    
 

}
