//
//  ViewController.swift
//  DemoProjectSwift
//
//  Created by Ujjwal Singh on 15/11/17.
//  Copyright © 2017 Ujjwal Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableViewExample: UITableView!

    var swiftComponentsList : [String] = ["Array", "Dictionary", "Sets", "Tuples", "Control Flow", "Functions", "Closures"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let myString:String? = nil
//        
//        if myString != nil {
//            //print(myString!)
//            print("myString has nil value")
//        } else {
//            print("myString has nil value")
//        }
        
        var myString:String?
        
        myString = "Hello, Swift 4!"
        
        if myString != nil {
            print(myString)
        } else {
            print("myString has nil value")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftComponentsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SwiftExampleCellTableViewCell", for: indexPath)
        
        cell.textLabel?.text = swiftComponentsList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: false)
        let strVal : String = swiftComponentsList[indexPath.row]
        print(strVal)
        let arrayExampleVC : ArrayExampleViewController = self.storyboard?.instantiateViewController(withIdentifier: "ArrayExampleViewController") as! ArrayExampleViewController
        arrayExampleVC.selectedIndexPathStr = swiftComponentsList[indexPath.row]
        if strVal == swiftComponentsList[0]
        {
            
        }
        self.navigationController?.pushViewController(arrayExampleVC, animated: true)
    }
}

