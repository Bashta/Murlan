//
//  SequenceExtension.swift
//  Murlan
//
//  Created by Er on 12/1/16.
//  Copyright © 2016 Er. All rights reserved.
//

import Foundation

extension Sequence {
    /// Returns an new array with the contents of this sequence, shuffled.
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}
