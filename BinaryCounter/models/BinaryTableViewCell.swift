//
//  BinaryTableViewCell.swift
//  BinaryCounter
//
//  Created by Hajar Alomari on 08/12/2021.
//

import UIKit

class BinaryTableViewCell: UITableViewCell {

 
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    var delegate: BinaryCellDelegate?
    
    @IBAction func plusBtnPressed(_ sender: UIButton) {
        let number = numberLabel.text ?? "0"
        delegate?.addBinary(number: number)
    }
    
    
    @IBAction func minusBtnPressed(_ sender: UIButton) {
        let number = numberLabel.text ?? "0"
        delegate?.subtractBinary(number: number)
    }
    
    func setBinary(number: Int){
        numberLabel.text = String(number)
    }
}
