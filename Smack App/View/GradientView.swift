//
//  GradientView.swift
//  Smack App
//
//  Created by Raymond Lopez on 10/2/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

// IBDesignable lets xcode render what the app will look like in the main.storyboard. (uses a bit more computing power though)
@IBDesignable


class GradientView: UIView {

    
    //creates your own varible to change in the UI, an example of another variable would be like text color, backgorund color, etc.
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.3631127477, green: 0.4045833051, blue: 0.8775706887, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    //this creates the layer, mixes the two colors to make the gradient. It needs three pieces of information, 1. The colors( which were created above), 2. A start and end point in the view, and 3. We need to specify the size of the view it's going to occupy.
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        // Step 1
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        // Step 2
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //Step 3
        gradientLayer.frame = self.bounds
        // Actually setting the layer
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
