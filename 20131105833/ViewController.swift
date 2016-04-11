//
//  ViewController.swift
//  20131105833
//
//  Created by zx5833 on 16/4/11.
//  Copyright © 2016年 zx5833. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var loop=0;
    var x:Double=0.0;
    var y:Double=0.0;
    var pointLoop=false;
    @IBAction func one(sender: UIButton) {
        zeroSet();
        display.text! += "1";
    }
    @IBAction func two(sender: UIButton) {
        zeroSet();
        display.text! += "2";
    }
    @IBAction func three(sender: UIButton) {
        zeroSet();
        display.text! += "3";
    }
    @IBAction func four(sender: UIButton) {
        zeroSet();
        display.text! += "4";
    }
    @IBAction func five(sender: UIButton) {
        zeroSet();
        display.text! += "5";
    }
    @IBAction func six(sender: UIButton) {
        zeroSet();
        display.text! += "6";
    }
    @IBAction func seven(sender: UIButton) {
        zeroSet();
        display.text! += "7";
    }
    @IBAction func eight(sender: UIButton) {
        zeroSet();
        display.text! += "8";
    }
    @IBAction func nine(sender: UIButton) {
        zeroSet();
        display.text! += "9";
    }
    @IBAction func zero(sender: UIButton) {
        if(display.text!.isEmpty){
            display.text! = "0";
        }
        else{
            zeroSet();
            display.text! += "0";
        }
    }
    @IBAction func dian(sender: UIButton) {
        if(!pointLoop)
        {
            if(!(display.text!=="")){
                display.text! += ".";
                pointLoop=true;
            }
        }
        
    }
    @IBAction func qingchu(sender: UIButton) {
        display.text!="0";
        x=0.0;
        y=0.0;
        pointLoop=false;
    }
    func xSet(){
        if(!display.text!.isEmpty){
            x=(Double)(display.text!)!;
        }
        else{
            display.text!="0";
        }
    }
    func ySet(){
        if(!display.text!.isEmpty){
            y=(Double)(display.text!)!;
        }
        else{
            display.text!="0";
        }
    }
    func zeroSet(){
        if(display.text!=="0"){
            display.text!="";
        }
    }
    func cutSet(var str:String){
        let endstr=(str as NSString).substringFromIndex(2);
        if(endstr==".0")
        {
            str.removeAtIndex(str.endIndex.predecessor());
            str.removeAtIndex(str.endIndex.predecessor());
            display.text!=str;
        }
        else
        {
            display.text!=str;
        }
    }
    @IBAction func jia(sender: UIButton) {
        xSet();
        display.text! = "";
        pointLoop=false;
        loop=1;
    }
    @IBAction func jian(sender: UIButton) {
        xSet();
        display.text!="";
        pointLoop=false;
        loop=2;
    }
    @IBAction func cheng(sender: UIButton) {
            xSet();
            display.text!="";
            pointLoop=false;
            loop=3;
    }
    @IBAction func chu(sender: UIButton) {
        xSet();
        display.text!="";
        pointLoop=false;
        loop=4;
    }
    @IBAction func dengyu(sender: UIButton) {
        ySet();
        var endstr:String;
        switch (loop){
        case 0:
            display.text!="0";break;
        case 1:2013
        endstr="\(x+y)";cutSet(endstr);break;
        case 2:
            endstr="\(x-y)";cutSet(endstr);break;
        case 3:
            endstr="\(x*y)";cutSet(endstr);break;
        case 4:
            endstr="\(x/y)";cutSet(endstr);break;
        case 5:
            endstr="\(fmod(x,y))";cutSet(endstr);break;
        case 6:
            endstr="\(pow(x,y))";cutSet(endstr);break;
        default:
            display.text!="0";
        }
    }
    @IBAction func kaigen(sender: UIButton) {
        xSet();
        var str:String;
        str="\(sqrt(x))";
        cutSet(str);
    }
    @IBAction func pingfang(sender: UIButton) {
        xSet();
        let endstr="\(x*x)";
        cutSet(endstr);
    }
    @IBAction func shanchu(sender: UIButton) {
        if(display.text!.isEmpty||display.text!=="0")
        {
            display.text!="0";
        }
        else if((display.text!.characters.count)==1)
        {
            display.text!="0";
        }
        else
        {
            var str=display.text!;
            str.removeAtIndex(str.endIndex.predecessor());
            display.text!=str;
        }
    }


}

