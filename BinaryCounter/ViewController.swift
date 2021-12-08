//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Hajar Alomari on 08/12/2021.
//

import UIKit

class ViewController: UIViewController,  BinaryCellDelegate{
  
    @IBOutlet weak var binaryTableView: UITableView!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var binaryList: [Int] = []
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        binaryList = createBinaryArray()
        print(binaryList)
        binaryTableView.delegate = self
        binaryTableView.dataSource = self
    }
    
    func addBinary(number: String) {
        let number = (number as NSString).integerValue
        total += number
        totalLabel.text = "Total: \(total)"
    }
    
    func subtractBinary(number: String) {
        let number = (number as NSString).integerValue
        total -= number
        totalLabel.text = "Total: \(total)"
    }
    


    func createBinaryArray() -> [Int]{
        var tempArray: [Int] = [1]
        var number = 0
        for i in 0...16{
           number = tempArray[i] * 10
            tempArray.append(number)
            print(number)
        }
        return tempArray
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return binaryList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let number = binaryList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! BinaryTableViewCell
        
        cell.setBinary(number: number)
        cell.delegate = self
        
        return cell
    }


}

