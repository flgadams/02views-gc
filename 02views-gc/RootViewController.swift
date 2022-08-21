//
//  ViewController.swift
//  template-swift-no-sb
//
//  Created by Glenn Adams on 7/30/22.
// A Swift project template for UIKit apps, no storyboards

import UIKit

class RootViewController: UIViewController {

    lazy var draw1Button:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("1: UIView overrides draw() w/ UIKit", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(draw1ButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func draw1ButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(Draw1ViewController(), animated: true )
    }
    
    lazy var draw2Button:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("2 UIView overrides draw() w/ CG", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(draw2ButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func draw2ButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(Draw2ViewController(), animated: true)
    }
    
    lazy var draw3Button:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw 3", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(draw3ButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func draw3ButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(Draw3ViewController(), animated: true)
    }
    
    lazy var draw4Button:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw 4", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(draw4ButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func draw4ButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(Draw4ViewController(), animated: true)
    }
    
    lazy var draw5Button:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw 5", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(draw5ButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func draw5ButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(Draw5ViewController(), animated: true)
    }
    
    lazy var draw6Button:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw 6", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(draw6ButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func draw6ButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(Draw6ViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        for (index, eachButton) in [draw1Button,draw2Button, draw3Button, draw4Button,draw5Button, draw6Button].enumerated() {
            self.view.addSubview(eachButton)
            eachButton.frame = CGRect(x: 0, y:index * 50 + 50, width: Int(self.view.bounds.width), height: 50)
            eachButton.autoresizingMask = .flexibleWidth
        }
        
        
        
        
        
        
        
    }
}

