//
//  Draw8ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit
/*
To illustrate, I’ll create an image showing Mars centered in another image of Mars that’s twice as large, using the .multiply blend mode

Neuburg, Matt. Programming iOS 14 . O'Reilly Media. Kindle Edition.
 */

class Draw8ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        let marsImage = UIImage(named: "mars")!
        let sizeOfMars = marsImage.size
        let imageRenderer = UIGraphicsImageRenderer(size: CGSize(width: sizeOfMars.width*2, height: sizeOfMars.height*2))
        
        let marsCombinedImage = imageRenderer.image {
            _ in
            
            marsImage.draw(in: CGRect(x: 0, y: 0, width: sizeOfMars.width*2, height: sizeOfMars.height*2))
            marsImage.draw(
                in: CGRect(x: sizeOfMars.width/2, y: sizeOfMars.height/2, width: sizeOfMars.width, height: sizeOfMars.height),
                    blendMode: .multiply, alpha: 1.0
                )
        }
        
        let marsImageView = UIImageView(image: marsCombinedImage)
        self.view.addSubview(marsImageView)
        marsImageView.frame = CGRect(x: 0, y: 0, width: sizeOfMars.width*2, height: sizeOfMars.height*2)
        
    }
    

   
}
