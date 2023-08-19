//
//  LAContext.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

import LocalAuthentication

public extension LAContext {
    enum BiometricType: String {
        case none
        case touchID
        case faceID
    }

    var biometricType: BiometricType {
        var error: NSError?

        guard self.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else {
            return .none
        }

        switch self.biometryType {
        case .none:
            return .none
        case .touchID:
            return .touchID
        case .faceID:
            return .faceID
        @unknown default:
            print("OMG!")
        }
        
        return  self.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) ? .touchID : .none
    }
}
