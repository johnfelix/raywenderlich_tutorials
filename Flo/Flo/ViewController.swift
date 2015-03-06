//
//  ViewController.swift
//  Flo
//
//  Created by JohnFelix on 3/3/15.
//  Copyright (c) 2015 JohnIsaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!

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
    }
}

