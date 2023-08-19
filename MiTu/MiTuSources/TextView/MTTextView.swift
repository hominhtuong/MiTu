//
//  MTTextView.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

import Foundation
import UIKit

public extension UITextView {
    func numberOfLines() -> Int {
        if let fontUnwrapped = self.font {
            return Int(self.contentSize.height / fontUnwrapped.lineHeight)
        }
        return 0
    }
}
