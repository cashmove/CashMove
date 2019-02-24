//
//  CameraButton.swift
//  CashMove
//
//  Created by Pavel Koval on 2/24/19.
//  Copyright © 2019 CashMove. All rights reserved.
//

import UIKit

class CameraButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()
    }
    
    private func customize() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(collapseButton))
        swipeRight.direction = .right
        addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(expandButton))
        swipeLeft.direction = .left
        addGestureRecognizer(swipeLeft)
    }
    
    @objc private func collapseButton() {
        let image = UIImage(named: "button_camera_inactive")
        setImage(image, for: .normal)
    }
    
    @objc private func expandButton() {
        let image = UIImage(named: "button_camera_active")
        setImage(image, for: .normal)
    }
}
