//
//  MasterSplitViewCOntroller.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/26/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import UIKit

class MasterSplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.preferredDisplayMode = .allVisible
        
        
    }
    
    func splitViewController(
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController: UIViewController,
        onto primaryViewController: UIViewController) -> Bool {
        // Return true to prevent UIKit from applying its default behavior
        return true
    }

    

}
