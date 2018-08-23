//
//  ViewController.swift
//  DoubleBrowser
//
//  Created by 윤호용 on 2017. 1. 8..
//  Copyright © 2017년 윤호용. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: UIWebView!
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegment(at :bookMarkSegmentedControl.selectedSegmentIndex);
        
        let urlString = "http://www.\(bookMarkUrl!).com"
        mainWebView.loadRequest(URLRequest(url: URL(string:urlString)!))
        urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        
        if !urlString.hasPrefix("http://"){
            urlString = "http://\(urlTextField.text!)"
        }
        
        mainWebView.loadRequest(URLRequest(url: URL(string:urlString)!))
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegment(at :0);
        let urlString = "http://www.\(bookMarkUrl!).com"
        mainWebView.loadRequest(URLRequest(url: URL(string:urlString)!))
        
        super.viewDidLoad()
    }
    @IBAction func refreshAction(_ sender: Any) {
        mainWebView.reload()
    }
    @IBAction func stopAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        spinningActivityIndicatorView.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        spinningActivityIndicatorView.stopAnimating()
        
        if let urlText = webView.request?.url?.absoluteString{
            urlTextField.text = urlText;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
