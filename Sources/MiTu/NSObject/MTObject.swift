//
//  MTObject.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

#if os(iOS)
import Foundation

public extension NSObject {
    @nonobjc class var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return type(of: self).className
    }
}
#endif
