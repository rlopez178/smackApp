//
//  ChannelVC.swift
//  Smack App
//
//  Created by Raymond Lopez on 10/2/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Allows for the side menu to show most of it's self minus 60.
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
