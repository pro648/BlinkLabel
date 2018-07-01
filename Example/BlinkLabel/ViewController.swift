//
//  ViewController.swift
//  BlinkLabel
//
//  Created by pro648 on 07/01/2018.
//  Copyright (c) 2018 pro648. All rights reserved.
//

import UIKit
import BlinkLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkLabel = BlinkLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBlinking = true
        
        // Setup the BlinkLabel.
        blinkLabel.text = "I blink!"
        blinkLabel.font = UIFont.preferredFont(forTextStyle: .body)
        blinkLabel.textColor = .orange
        blinkLabel.startBlinking()
        view.addSubview(blinkLabel)
        
        // Create a UIButton to toggle the blinking.
        let toggleButton = UIButton.init(type: .system)
        toggleButton.setTitle("Toggle Blinking", for:.normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        
        // Create a UIStackView to layout blinkLabel and toggleButton.
        let stackView = UIStackView.init(arrangedSubviews: [blinkLabel, toggleButton])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        view.addSubview(stackView)
        
        // Layout out stackView.
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    @objc func toggleBlinking() {
        if isBlinking {
            blinkLabel.stopBlinking()
        } else {
            blinkLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
}
