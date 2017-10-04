//
//  ChannelVC.swift
//  Smack App
//
//  Created by Raymond Lopez on 10/2/17.
//  Copyright © 2017 OceanBiscuit. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //MARK: Actions
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    // You create this func in the VC that you want to unwind back to. You unwind back to here by using the same old performsegue command.
    @IBAction func prepareForUnwind(segue : UIStoryboardSegue){}
    
    //MARK: Outlets
    
    //Notice that this login button is both an action and an outlet
    @IBOutlet weak var loginBtn: UIButton!
    
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Allows for the side menu to show most of it's self minus 60.
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
