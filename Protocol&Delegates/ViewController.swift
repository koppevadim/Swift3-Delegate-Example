//
//  ViewController.swift
//  Protocol&Delegates
//
//  Created by Vadim Koppe on 27.09.16.
//  Copyright © 2016 Vadim Koppe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataSendDelegate {
    
    @IBOutlet weak var receivingTextField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidEnterData(data: String) {
        receivingTextField.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let delegateVC: DelegateViewController = segue.destination as! DelegateViewController
            delegateVC.delegate = self
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

