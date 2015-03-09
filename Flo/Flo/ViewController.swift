//
//  ViewController.swift
//  Flo
//
//  Created by JohnFelix on 3/3/15.
//  Copyright (c) 2015 JohnIsaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var graphView: GraphView!
    @IBOutlet weak var counterLabel: UILabel!
    var isGraphViewShowing = false

    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter++
        } else {
            if counterView.counter > 0 {
                counterView.counter--
            }
        }
        counterLabel.text = String(counterView.counter)

        if isGraphViewShowing {
            counterViewTap()
        }
    }

    @IBAction func counterViewTap() {

        if isGraphViewShowing  {
            UIView.transitionFromView(graphView, toView: counterView, duration: 1.0, options: UIViewAnimationOptions.TransitionFlipFromLeft | UIViewAnimationOptions.ShowHideTransitionViews, completion: nil)
        } else {
            UIView.transitionFromView(counterView, toView: graphView, duration: 1.0, options: UIViewAnimationOptions.TransitionFlipFromRight | UIViewAnimationOptions.ShowHideTransitionViews, completion: nil)
        }

        isGraphViewShowing = !isGraphViewShowing
    }
}

