//
//  ViewController.swift
//  UIGestureRecognizerChallenge
//
//  Created by Robert Duvall on 6/20/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    /***************************************************
    * Start Your Code Here For MVP
    ***************************************************/
    @IBAction func onViewMoved(sender: UIPanGestureRecognizer) {
        let point = sender.locationInView(self.view)
        myView.center = point
    }






    /***************************************************
    * End Your Code Here For MVP
    ***************************************************/

    /***************************************************
    * Start Your Code Here For Stretch #1
    ***************************************************/
    @IBAction func onViewPinched(sender: UIPinchGestureRecognizer) {
        self.view.transform = CGAffineTransformScale(self.view.transform, sender.scale, sender.scale)
        sender.scale * 100
        
    }

    /***************************************************
    * End Your Code Here For Stretch #1
    ***************************************************/

    /***************************************************
    * Start Your Code Here For Stretch #2
    ***************************************************/
    var toggle = true
    
    @IBAction func onViewTapped(sender: UITapGestureRecognizer) {
        
        
        if toggle
        {
           myView.backgroundColor = UIColor.purpleColor()
            toggle = false
        }
        else
        {
            myView.backgroundColor = UIColor.blueColor()
            toggle = true
        }
    }

    /***************************************************
    * End Your Code Here For Stretch #2
    ***************************************************/

    /***************************************************
    * Start Your Code Here For Stretch #3
    ***************************************************/
    @IBAction func onViewSwiped(sender: UISwipeGestureRecognizer) {
    }

        /***************************************************
        * Start Your Code Here For Stretch #4
        ***************************************************/

        /***************************************************
        * End Your Code Here For Stretch #4
        ***************************************************/
    
    /***************************************************
    * End Your Code Here For Stretch #3
    ***************************************************/


}

