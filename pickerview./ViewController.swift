//
//  ViewController.swift
//  pickerview.
//
//  Created by Student P_04 on 09/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
var colorArray = ["Red","Blue","Cyan","Green","Black","Yellow"]
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let title = colorArray[row]
        return title
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       // let rowNum = pickerView.selectedRow(inComponent: component)
       // let title = colorArray[rowNum]
       // print(title)
       let title = colorArray[row]
        print(title)
        switch title {
        case "Red":
            view.backgroundColor = .red
        case "Blue" :
            view.backgroundColor = .blue
            case "Cyan":
            view.backgroundColor = .cyan
            case "Yellow":
            view.backgroundColor = .yellow
        case "Green" :
            view.backgroundColor = .green
        default: break
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

