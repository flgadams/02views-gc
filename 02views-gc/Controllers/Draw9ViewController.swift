//
//  Draw9ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit
//UIImage method to split an image in half
/*
 
 ...to obtain an image of the right half of Mars, you can make a graphics context half the width of the mars image, and then draw mars shifted left, so that only its right half intersects the graphics context

 Neuburg, Matt. Programming iOS 14 . O'Reilly Media. Kindle Edition.
 */

class Draw9ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        let marsImage = UIImage(named: "mars")!
        let sizeOfMars = marsImage.size
        
        let imageRenderer = UIGraphicsImageRenderer(size: CGSize(width: sizeOfMars.width/2, height: sizeOfMars.height))
        // define the canvas. The bounds delineate the right half of Mars
        /* This method also works if you use .zero below
        let imageRenderer = UIGraphicsImageRenderer(
            bounds: CGRect(x: sizeOfMars.width/2,
                           y: 0,
                           width: sizeOfMars.width/2,
                           height: sizeOfMars.height),
            format: marsImage.imageRendererFormat)
         */
        //
        //draw into canvas but start a zero which is off the canvas so the left half is not on the canvas
        // Draws Mars shifted left
        let halfMarsImage = imageRenderer.image {
            _ in
            
            marsImage.draw(at: CGPoint(x: -sizeOfMars.width/2, y: 0))
           // marsImage.draw(at: .zero)  *** OR THIS WOULD WORK ALSO
        }
        
        let marsImageView = UIImageView(image: halfMarsImage)
        self.view.addSubview(marsImageView)
        marsImageView.frame = CGRect(x: 50, y: 50, width: sizeOfMars.width/2, height: sizeOfMars.height)
        marsImageView.backgroundColor = .white
    }
}
