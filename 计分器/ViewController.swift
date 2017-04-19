//
//  ViewController.swift
//  计分器
//
//  Created by s20151104707 on 17/3/27.
//  Copyright © 2017年 s20151104707. All rights reserved.
//

import UIKit
var a : Int = 0
var b : Int = 0
var x : Int = 0
class ViewController: UIViewController {


    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBAction func restart(_ sender: UIButton) {
        a = 0
        b = 0
        x.text = "\(0)"
        y.text = "\(0)"
    }
    @IBAction func A1(_ sender: UIButton) {
        a=a+1
        x.text = "\(a)"
        if a >= 10 && b >= 10{
            if a >= b+2{
                x.text = "A选手胜出"
            }
        }else if a > b && a == 11{
            x.text="A选手获胜"
        }
        
    }
    @IBAction func A2(_ sender: UIButton) {
        a=a-1
        x.text = "\(a)"
        if a < 0
        {
            x.text = "输入有误请点重新开始"}
    }
    @IBAction func B1(_ sender: UIButton) {
        b=b+1
        y.text = "\(b)"
        if a >= 10 && b >= 10{
            if a >= b+2{
                x.text = "A选手胜出"
            }
        }else if b > a&&b == 11{
            y.text="B选手获胜"
        }
    }
    @IBAction func B2(_ sender: UIButton) {
        b=b-1
        y.text = "\(b)"
        if b < 0
        {
            y.text = "输入有误请点重新开始"}
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

