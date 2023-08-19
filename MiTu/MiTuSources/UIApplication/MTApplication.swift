//
//  MTApplication.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

import Foundation
import UIKit

public extension UIApplication {
    //Opens Settings app
    func openSettingsApp(completion: ((Bool) -> Void)? = nil) {
        UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:], completionHandler: completion)
    }
}
