//
//  Draw10ViewController.swift
//  02views-gc
//
//  Created by Glenn Adams on 8/23/22.
//

import UIKit

class Draw10ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray

        let rhombusImage = UIImage(systemName: "rhombus")!
        let sz = CGSize(width: 200, height: 200)
        
        let imageRenderer = UIGraphicsImageRenderer(size: sz)
        let rhombusResizedImage = imageRenderer.image {
            _ in
            rhombusImage.withTintColor(.purple).draw(in: CGRect(origin: .zero, size: sz))
        }

        let iv = UIImageView(image: rhombusResizedImage)
        self.view.addSubview(iv)
        iv.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    }
    
}
