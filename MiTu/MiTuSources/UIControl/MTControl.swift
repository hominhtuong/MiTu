//
//  MTControl.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

import Foundation
import UIKit

public extension UIControl {
    func handle(for controlEvents: UIControl.Event = .touchUpInside, _ closure: @escaping ()->()) {
        let sleeve = ClosureSleeve(closure)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: controlEvents)
        objc_setAssociatedObject(self, "[\(arc4random())]", sleeve, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
    }
}
