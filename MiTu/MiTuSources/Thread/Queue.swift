//
//  Queue.swift
//  MiTu
//
//  Created by MiTu on 21/11/21.
//  Copyright (c) 2021-Present MiTu Team

import UIKit
import Foundation

public class Queue {
    public static func main(execute work: @escaping @convention(block) () -> Void) {
        DispatchQueue.main.async {
            work()
        }
    }
    
    public static func global(qos: DispatchQoS.QoSClass = .default, execute work: @escaping @convention(block) () -> Void) {
        DispatchQueue.global(qos: qos).sync(execute: {
            work()
        })
    }
    
    public static func after(queue: DispatchQueue = DispatchQueue.main, deadline: DispatchTime, execute work: @escaping @convention(block) () -> Void) {
        queue.asyncAfter(deadline: deadline, execute: {
            work()
        })
    }
}
