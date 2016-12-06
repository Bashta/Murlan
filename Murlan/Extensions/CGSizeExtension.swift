//
//  CGSizeExtension.swift
//  Murlan
//
//  Created by Er on 12/4/16.
//  Copyright © 2016 Er. All rights reserved.
//

import UIKit

extension CGSize {
   ///Returns half the size of self
    var half: CGSize {
        return CGSize(width: self.width / 2, height: self.height / 2)
    }
    
    ///Returns half CGSize of self scaled as a percentage
    func scaled(scale: CGFloat) -> CGSize {
        return  CGSize(width: self.width * scale, height: self.height * scale)
    }
}
