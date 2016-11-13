//
//  Home.swift
//  BreakHeads
//
//  Created by Sandra Basquero on 20/10/16.
//  Copyright © 2016 SBS. All rights reserved.
//

import Foundation
import UIKit

class Home: UIViewController {
    
    @IBOutlet var levelBtns: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for btn in levelBtns {
            let blur = UIVisualEffectView(effect: UIBlurEffect(style:
                UIBlurEffectStyle.light))
            blur.frame = btn.bounds
            blur.isUserInteractionEnabled = false //This allows touches to forward to the button.
            btn.insertSubview(blur, at: 0)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func levelSelection(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            Constants.sharer.numOfPiecesPerRow = 2
        case 2:
            Constants.sharer.numOfPiecesPerRow = 3
        case 3:
            Constants.sharer.numOfPiecesPerRow = 4
        default:
            Constants.sharer.numOfPiecesPerRow = 0
        }
    }
    
}

