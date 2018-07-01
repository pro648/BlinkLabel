//
//  BlinkLabel.swift
//  BlinkLabel
//
//  Created by pro648 on 2018/7/1.
//

import UIKit

public class BlinkLabel: UILabel {
    public func startBlinking() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .repeat, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
