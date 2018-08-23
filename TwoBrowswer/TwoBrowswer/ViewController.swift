//
//  ViewController.swift
//  TwoBrowswer
//
//  Created by 윤호용 on 2017. 1. 15..
//  Copyright © 2017년 윤호용. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TopView: UIWebView!
    @IBOutlet weak var BottomView: UIWebView!
    
    var selectedBrowser = [Bool]()//if true TopBrower, or BottomBrowser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        naverLoad();
        daumLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func naverLoad(){
        BottomView.loadRequest(URLRequest(url: URL(string:"http://www.naver.com")!))
    }
    func daumLoad(){
        TopView.loadRequest(URLRequest(url: URL(string:"http://www.daum.net")!))
    }
    @IBAction func goBackBrowser(_ sender: Any) {
        
    }
    @IBAction func goForwardBrowser(_ sender: Any) {
        
    }
}

