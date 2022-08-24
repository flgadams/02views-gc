//
//  Draw11ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit

class Draw11ViewController: UIViewController {
   // use Quartz It can crop !!!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        // Do any additional setup after loading the view.
        
        let marsImage = UIImage(named: "mars")!
        let marsCG = marsImage.cgImage!
        let sz = marsImage.size
        
        let marsLeft = marsCG.cropping(to: CGRect(x: 0, y: 0, width: sz.width/2, height: sz.height))!
        
        let marsRight = marsCG.cropping(
            to: CGRect(x: sz.width/2, y: 0, width: sz.width/2, height: sz.height))!
        // we will display a half, a gap, a half
        let imageRenderer = UIGraphicsImageRenderer(
            size: CGSize(width: sz.width*1.5, height: sz.height),
            format: marsImage.imageRendererFormat)
      
        let image = imageRenderer.image {
            
            ctx in
            let con = ctx.cgContext
            con.draw(marsLeft, in: CGRect(x: 0, y: 0, width: sz.width/2, height: sz.height))
            con.draw(marsRight, in: CGRect(x: sz.width, y: 0, width: sz.width/2, height: sz.height))
            
        }
        
        let iv = UIImageView(image: image)
        self.view.addSubview(iv)
        iv.frame = CGRect(x: 0, y: 0, width: sz.width*1.5, height: sz.height)
        
    }
    

  

}
