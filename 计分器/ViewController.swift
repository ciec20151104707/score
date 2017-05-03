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
var flagA : Int = 0
var flagB : Int = 0
var dlg : Int = 0


class ViewController: UIViewController,
    UIImagePickerControllerDelegate,
    UINavigationControllerDelegate{


    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBOutlet weak var imageA: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBAction func img1(_ sender: UIButton) {
        if dlg==0{
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        }
    }

    @IBAction func img2(_ sender: UIButton) {
        if dlg==0{
            flagB=1
            flagA=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        //查看info对象
        print(info)
        //显示的图片
        let image:UIImage!
        //获取选择的原图
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        if(flagA==1){imageA.image = image}
        else if(flagB==1){image2.image = image}
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    
    var i : Int = 0
    var j : Int = 0
    var k : Int = 0
    var l : Int = 0
    var m : Int = 0
    @IBAction func restart(_ sender: UIButton) {
        a = 0
        b = 0
        x.text = "\(0)"
        y.text = "\(0)"
        z.text = " "
    }
    @IBOutlet weak var Final1: UITextField!
    @IBOutlet weak var Final2: UITextField!
    @IBAction func A1(_ sender: UIButton) {
        a=a+1
        x.text = "\(a)"
        if a >= 10 && b >= 10{
            if a >= b+2{
                z.text = "A选手胜出"
                k = i + 1
                i += 1
                Final1.text = "\(k)"
            }
        }else if a > b && a == 11{
            z.text="A选手获胜"
            k = i + 1
            i += 1
            Final1.text = "\(k)"

        }
        
    }
    @IBAction func A2(_ sender: UIButton) {
        
        if a>=0{
            a = a - 1
        x.text = "\(a)"
        }
        if a < 0
        {
            x.text = "输入有误请点重新开始"
        x.text = "\(0)"}
    }
    @IBAction func B1(_ sender: UIButton) {
        b = b + 1
        y.text = "\(b)"
        if a >= 10 && b >= 10{
            if b >= a+2{
                z.text = "B选手胜出"
                l = j + 1
                j += 1
                Final2.text = "\(l)"

            }
        }else if b > a&&b == 11{
            z.text="B选手获胜"
            l = j + 1
            j += 1
            Final2.text = "\(l)"
        }
    }
    @IBAction func B2(_ sender: UIButton) {
        if  b>=0{
             b = b - 1
            y.text = "\(b)"
        }
        
        if b < 0
        {
            y.text = "输入有误请点重新开始"
            y.text = "\(0)"
        }
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

