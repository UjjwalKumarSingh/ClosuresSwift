//
//  ArrayExampleViewController.swift
//  DemoProjectSwift
//
//  Created by Ujjwal Singh on 15/11/17.
//  Copyright © 2017 Ujjwal Singh. All rights reserved.
//

import UIKit

class ArrayExampleViewController: UIViewController {
    var selectedIndexPathStr : String!
    
    @IBOutlet weak var labelHeader: UILabel!
    @IBOutlet weak var textViewResult: UITextView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        if selectedIndexPathStr == "Array"
        {
            labelHeader.text = "Array Example"
        }
        else if selectedIndexPathStr == "Dictionary"
        {
            labelHeader.text = "Dictionary Example"
        }
        else
        {
            labelHeader.text = (selectedIndexPathStr) + " " + "Example"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func showResultBtnClicked(_ sender: Any)
    {
        let arrValues : [Int] = [1, 2, 5, 7, 8, 9]
        switch selectedIndexPathStr
        {
        case "Array":
            let isPrimeNo = getAdditionIsPrimeNumber(valuesArr: arrValues)
            if isPrimeNo
            {
                showAlert(title: "Result", andMessage: "addition of array \(arrValues) is prime")
            }
            else
            {
                showAlert(title: "Result", andMessage: "addition of array \(arrValues) is not prime")
            }
            
            break
        default:
            break
        }
        
        showAlert(title: selectedIndexPathStr, andMessage: selectedIndexPathStr + " " + "selected")
    }
    
    func showAlert(title : String, andMessage message : String)
    {
        
        // create the alert
        let alert = UIAlertController(title: (title), message: (message), preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        // alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }
        }))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
 
    }
    
    func getAdditionIsPrimeNumber(valuesArr : Array<Any>) -> Bool
    {
        let valueResult : Float = 0.7
        
        return false
    }
}
