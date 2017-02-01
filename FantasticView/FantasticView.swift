//
//  FantasticView.swift
//  FantasticView
//
//  Created by UNT Juan José Granados on 1/02/17.
//  Copyright © 2017 UNT Juan José Granados. All rights reserved.
//

import UIKit

class FantasticView: UIView {
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter+=1
            }
        }
        
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
    
    
    
}
