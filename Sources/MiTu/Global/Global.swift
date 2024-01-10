//
//  Global.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

//MARK: - UISCREEN
#if os(iOS)
import UIKit

public var screenSize: CGSize {
    return UIScreen.main.bounds.size
}

public var maxWidth: CGFloat {
    return UIScreen.main.bounds.width
}

public var maxHeight: CGFloat {
    return UIScreen.main.bounds.height
}

public func currentWindow() -> UIWindow? {
    return UIApplication.shared.windows.first
}

public var topSafeHeight: CGFloat {
    if let window = currentWindow() {
        return window.safeAreaInsets.top
    }
    return 0
}

public var botSafeHeight: CGFloat {
    if let window = currentWindow() {
        return window.safeAreaInsets.bottom
    }
    return 0
}

public var leftSafeHeight: CGFloat {
    if let window = currentWindow() {
        return window.safeAreaInsets.left
    }
    return 0
}

public var rightSafeHeight: CGFloat {
    if let window = currentWindow() {
        return window.safeAreaInsets.right
    }
    return 0
}

public var topViewController: UIViewController? {
    let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
    if var topController = keyWindow?.rootViewController {
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        return topController
    }
    return nil
}

#endif
