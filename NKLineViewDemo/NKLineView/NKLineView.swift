//
//  NKLineView.swift
//  NKLineViewDemo
//
//  Created by Atsumi3 on 2016/02/26.
//  Copyright © 2016年 Atsumi3. All rights reserved.
//

import UIKit

class NKLineView: UIView {
    ////// Property
    private var strokeWidth : CGFloat = 12;
    private var strokeColor : UIColor = UIColor.blueColor();
    private var dashPattern : [CGFloat] {
        get {
            return [strokeWidth * 0, strokeWidth * 2];
        }
    }
    
    private var leftTop : CGPoint!
    private var rightBottom : CGPoint!
    private var view1 : UIView!
    private var view2 : UIView!
    /////////////////////////////
    
    /// Initialize
    init(view1 : UIView, view2 : UIView){
        super.init(frame: CGRectZero);
        self.view1 = view1;
        self.view2 = view2;
        
        self.backgroundColor = UIColor.clearColor();
        self.layer.zPosition = -2
        
        self.update();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /////////////////////////////
    
    
    /// setter //////
    func setStrokeColor(color : UIColor){
        self.strokeColor = color;
    }
    
    func setStrokeWidth(width : CGFloat){
        self.strokeWidth = width;
    }
    
    func setZPosition(position : CGFloat){
        self.layer.zPosition = position;
    }
    /////////////////
    
    
    /// view update
    func update(){
        let fP = view1.frame.origin;
        let tP = view2.frame.origin;
        
        self.leftTop =
            CGPointMake(
                small(fP.x, v2: tP.x),
                small(fP.y, v2: tP.y)
        );
        
        self.rightBottom =
            CGPointMake(
                big(fP.x + view1.bounds.width, v2: tP.x + view2.bounds.width),
                big(fP.y + view1.bounds.height, v2: tP.y + view2.bounds.height)
        );
        
        self.frame = CGRectMake(leftTop.x, leftTop.y, rightBottom.x - leftTop.x, rightBottom.y - leftTop.y);
        self.setNeedsDisplay();
    }
    /////////////////
    
    override func drawRect(rect: CGRect) {
        let firstCenter = CGPointMake(center(view1.frame).x - self.frame.origin.x, center(view1.frame).y - self.frame.origin.y);
        let secondCenter = CGPointMake(center(view2.frame).x - self.frame.origin.x, center(view2.frame).y - self.frame.origin.y);
        
        self.strokeColor.setStroke()
        
        // draw line
        let line = UIBezierPath();
        line.setLineDash(dashPattern, count: dashPattern.count, phase: 0);
        line.moveToPoint(firstCenter);
        line.addLineToPoint(secondCenter);
        line.lineWidth = strokeWidth;
        line.lineCapStyle = CGLineCap.Round;
        line.stroke();
    }
    
    //// Calc method
    private func center(rect : CGRect)->CGPoint {
        return CGPointMake(rect.origin.x + (rect.width / 2), rect.origin.y + (rect.height / 2));
    }
    
    private func big(v1 : CGFloat, v2 : CGFloat)->CGFloat {
        return v1 >= v2 ? v1 : v2;
    }
    
    private func small(v1 : CGFloat, v2 : CGFloat)->CGFloat {
        return v1 >= v2 ? v2 : v1;
    }
    //////////////////
}