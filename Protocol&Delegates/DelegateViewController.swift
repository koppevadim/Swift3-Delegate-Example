//
//  DelegateViewController.swift
//  Protocol&Delegates
//
//  Created by Vadim Koppe on 27.09.16.
//  Copyright © 2016 Vadim Koppe. All rights reserved.
//

import UIKit

protocol DataSendDelegate {
    func userDidEnterData(data: String)
}

class DelegateViewController: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    var delegate: DataSendDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        if delegate != nil {
            if let data = dataEntryTextField.text {
                delegate?.userDidEnterData(data: data)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
