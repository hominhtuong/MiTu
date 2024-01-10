//
//  PHImage.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

#if os(iOS)
import Photos
import UIKit

public struct PHImage {
    public let asset: PHAsset
    public let image: UIImage
}

#endif
