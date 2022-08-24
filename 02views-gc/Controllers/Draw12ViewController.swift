//
//  Draw12ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit

class Draw12ViewController: UIViewController {

    /*
     The simplest solution, when you drop down to the CGImage world to perform some transmutation, is to wrap the resulting CGImage in a UIImage and draw the UIImage instead of the CGImage.

     Neuburg, Matt. Programming iOS 14 . O'Reilly Media. Kindle Edition.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        let marsImage = UIImage(named: "mars")!
        let sizeOfMars = marsImage.size
        let marsCG = marsImage.cgImage!
        // note; different size calculation!
        let sizeOfMarsCG = CGSize(width: CGFloat(marsCG.width), height: CGFloat(marsCG.height))
        
        let marsLeftCG = marsCG.cropping(to: CGRect(x: 0, y: 0, width: sizeOfMarsCG.width/2, height: sizeOfMarsCG.height))!
        
        let marsRightCG = marsCG.cropping(
            to: CGRect(x: sizeOfMarsCG.width/2, y: 0, width: sizeOfMarsCG.width/2, height: sizeOfMarsCG.height))!
        
        // we will display a half, a gap, a half
        let imageRenderer = UIGraphicsImageRenderer(
            size: CGSize(width: sizeOfMars.width*1.5, height: sizeOfMars.height),
            format: marsImage.imageRendererFormat)
        
        let image = imageRenderer.image {
            _ in
            UIImage(cgImage: marsLeftCG,
                    scale: marsImage.scale,
                    orientation: marsImage.imageOrientation).draw(at: CGPoint(x: 0, y: 0))
            UIImage(cgImage: marsRightCG,
                    scale: marsImage.scale,
                    orientation: marsImage.imageOrientation).draw(at: CGPoint(x: sizeOfMars.width, y: 0))
        }
        
        let iv = UIImageView(image: image)
        self.view.addSubview(iv)
        iv.frame = CGRect(x: 0, y: 0, width: sizeOfMarsCG.width*1.5, height: sizeOfMarsCG.height)
        
        
    }
}

/*
 let mars = UIImage(named:"Mars")!
 let sz = mars.size
 let marsCG = mars.cgImage!
 let szCG = CGSize(CGFloat(marsCG.width), CGFloat(marsCG.height))
 let marsLeft =
     marsCG.cropping(to:
         CGRect(0,0,szCG.width/2.0,szCG.height))
 let marsRight =
     marsCG.cropping(to:
         CGRect(szCG.width/2.0,0,szCG.width/2.0,szCG.height))
 let r = UIGraphicsImageRenderer(size:CGSize(sz.width*1.5, sz.height),
     format:mars.imageRendererFormat)
 let im = r.image { _ in
     UIImage(cgImage: marsLeft!,
         scale: mars.scale,
         orientation: mars.imageOrientation).draw(at:CGPoint(0,0))
     UIImage(cgImage: marsRight!,
         scale: mars.scale,
         orientation: mars.imageOrientation).draw(at:CGPoint(sz.width,0))
 }

 Neuburg, Matt. Programming iOS 14 . O'Reilly Media. Kindle Edition.

 Neuburg, Matt. Programming iOS 14 . O'Reilly Media. Kindle Edition.
 */
