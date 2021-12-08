//
//  BinaryCellDelegate.swift
//  BinaryCounter
//
//  Created by Hajar Alomari on 08/12/2021.
//

import Foundation


protocol BinaryCellDelegate: AnyObject {
    
    func addBinary(number: String)
    func subtractBinary(number: String)
}
