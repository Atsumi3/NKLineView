//
//  ViewController.swift
//  NKLineViewDemo
//
//  Created by Atsumi3 on 2016/02/26.
//  Copyright © 2016年 Atsumi3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    var nkLineView : NKLineView?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.nkLineView = NKLineView(view1: view1, view2: view2);
        self.nkLineView?.setStrokeColor(UIColor.greenColor());
        self.view.addSubview(self.nkLineView!);
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        // needs Update...
        self.nkLineView!.update();
    }
    
    
    // view moving demo
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let p = touches.first?.locationInView(self.view);
        self.view2.frame.origin.x = p!.x -  (self.view2.bounds.size.width / 2);
        self.view2.frame.origin.y = p!.y -  (self.view2.bounds.size.height / 2);
        self.nkLineView!.update();
    }
}

