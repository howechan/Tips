//
//  ViewController.swift
//  Tips
//
//  Created by Will Chan on 10/5/15.
//  Copyright © 2015 Will Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var dollarLabel: UILabel!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var tipTitleLabel: UILabel!
    @IBOutlet weak var totalTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        billField.keyboardAppearance = UIKeyboardAppearance.Dark
        
        billAmountLabel.alpha = 0
        billAmountLabel.frame.origin.y = 1920
        billAmountLabel.frame.origin.x = view.frame.size.width/2 - billAmountLabel.frame.size.width
        dollarLabel.alpha = 0
        lineView.alpha = 0
        tipLabel.alpha = 0
        tipTitleLabel.alpha = 0
        totalTitleLabel.alpha = 0
        totalLabel.alpha = 0
        tipControl.alpha = 0
        
        UIView.animateWithDuration(1.25, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
                self.billAmountLabel.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.75, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.billAmountLabel.alpha = 1
            self.billAmountLabel.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1.25, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.dollarLabel.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.lineView.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1.6, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.tipTitleLabel.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1.7, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.tipLabel.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1.8, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.totalTitleLabel.alpha = 1
            self.totalLabel.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1.9, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            self.tipControl.alpha = 1
            }, completion: nil)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.15, 0.2, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}

