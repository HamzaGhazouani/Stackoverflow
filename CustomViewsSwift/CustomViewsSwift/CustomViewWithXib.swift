//
//  CustomViewWithXib.swift
//  CustomViewsSwift
//
//  Created by Hamza GHAZOUANI on 12/02/2016.
//  Copyright © 2016 Hamza GHAZOUANI. All rights reserved.
//

import UIKit

@IBDesignable
class CustomViewWithXib: UIView {

    // MARK: init methods
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commonSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonSetup()
    }
    
    // MARK: setup view 
    
    private func loadViewFromNib() -> UIView {
        let viewBundle = NSBundle(forClass: self.dynamicType)
        //  An exception will be thrown if the xib file with this class name not found,
        let view = viewBundle.loadNibNamed(String(self.dynamicType), owner: self, options: nil)[0]
        return view as! UIView
    }
    
    private func commonSetup() {
        let nibView = loadViewFromNib()
        nibView.frame = bounds
        // the autoresizingMask will be converted to constraints, the frame will match the parent view frame
        nibView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        // Adding nibView on the top of our view
        addSubview(nibView)
    }
}
