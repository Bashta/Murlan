//
//  ArrayExtension.swift
//  Murlan
//
//  Created by Er on 12/4/16.
//  Copyright © 2016 Er. All rights reserved.
//

extension Array where Element: Equatable {
    /// Remove first collection element that is equal to the given `object`:
    mutating func remove(object: Element) {
        if let index = index(of: object) {
            remove(at: index)
        }
    }

    /// Remove objects of collection that are equal to the given `objects`:
    mutating func remove(objects: [Element]) {
        for object in objects {
            remove(object: object)
        }
    }
}
