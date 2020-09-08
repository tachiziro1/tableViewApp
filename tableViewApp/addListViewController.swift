//
//  addListViewController.swift
//  tableViewApp
//
//  Created by たっくん on 2020/09/06.
//  Copyright © 2020 tatsuya.com. All rights reserved.
//

import UIKit


class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var addText: UITextField!
    
    //毎回arrayが再定義される
    var array = [String]()
    
    @IBAction func addButton(_ sender: Any) {
        //arrayにUserDefaultの値を再度代入する。
        if UserDefaults.standard.object(forKey: "add") != nil {
         
        array = UserDefaults.standard.object(forKey: "add") as! [String]
        
        }
        array.append(addText.text!)
        
        UserDefaults.standard.set(array, forKey: "add")
        
        self.navigationController?.popViewController(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
