//
//  ViewController.swift
//  EZSwift
//
//  Created by Nick Culbertson on 1/30/17.
//  Copyright © 2017 Nick Culbertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate{
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var Button5: UIButton!
    @IBOutlet var webview1: UIWebView!
    @IBOutlet var background: UIImageView!
    @IBOutlet var logo: UIImageView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    var string1: NSString!

    // MARK: Button Methods
    
    @IBAction func Action1() {
        string1="https://www.google.com"
        self .showWebsite()
    }
    
    @IBAction func Action2() {
        string1="https://www.facebook.com"
        self .showWebsite()
    }
    
    @IBAction func Action3() {
        string1="https://www.twitter.com"
        self .showWebsite()
    }
    
    @IBAction func Action4() {
        string1="https://www.youtube.com"
        self .showWebsite()
    }
    
    @IBAction func Action5() {
        string1="https://www.meetup.com/dallas-app-developers"
        self .showWebsite()
    }
    
    func hideMenu() {
        Button1.isHidden = true
        Button2.isHidden = true
        Button3.isHidden = true
        Button4.isHidden = true
        Button5.isHidden = true
        background.isHidden = true
        logo.isHidden = true

    }
    
    @IBAction func showMenu() {
        Button1.isHidden = false
        Button2.isHidden = false
        Button3.isHidden = false
        Button4.isHidden = false
        Button5.isHidden = false
        background.isHidden = false
        logo.isHidden = false

        string1="about:blank"
        webview1.loadRequest(URLRequest(url: URL(string: string1 as String)!))

    }
    
    // MARK: Webview Methods
    
    func showWebsite() {
        self.hideMenu()
        webview1.isHidden = false
        webview1.delegate = self
        webview1.loadRequest(URLRequest(url: URL(string: string1 as String)!))
    }
    
    func webViewDidStartLoad(_ webview1: UIWebView) {
        activity.startAnimating()
        activity.isHidden=false
        
    }
    
    func webViewDidFinishLoad(_ webview1: UIWebView) {
        activity.stopAnimating()
        activity.isHidden=true
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        activity.isHidden=true

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

