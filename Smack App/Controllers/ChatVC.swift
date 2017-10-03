//
//  ChatVC.swift
//  Smack App
//
//  Created by Raymond Lopez on 10/2/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    // MARK: Outlets
    
    // Notice that this is a outlet not an action
    @IBOutlet weak var menuBtn: UIButton!
    
    
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Because the menuBtn isn't an action, we have to give it an action manually. I'm guessing we have to do it like this because of the way SWReveal is coded.
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // These add the drag and tap to get out gestures, to add a little pizaz
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

   
}
