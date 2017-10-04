//
//  CreateAccountVC.swift
//  Smack App
//
//  Created by Raymond Lopez on 10/4/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //MARK: Actions
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
