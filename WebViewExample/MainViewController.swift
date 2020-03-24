//
//  ViewController.swift
//  WebViewExample
//
//  Created by Kritima Kukreja on 2020-03-24.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var myWebKitView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLambtonUrl()        // Do any additional setup after loading the view.
    }
    
    func loadLambtonUrl()
    {
        let url = URL(string: "https://www.lambtoncollege.ca/")
        let urlReq = URLRequest(url: url!)
        myWebKitView.load(urlReq)
    }
    func loadHtmlString()
    {
        let htmlString = "<h1>Hello World"
        
        myWebKitView.loadHTMLString(htmlString, baseURL: nil)
        
    }
    
    @IBAction func btnNavigation(_ sender: UIBarButtonItem) {
        
        switch sender.tag {
        case 0:
            myWebKitView.reloadFromOrigin()
        case 1:
            if myWebKitView.canGoBack
            {
                myWebKitView.goBack()
            }
        case 2:
            if myWebKitView.canGoForward
        {
            myWebKitView.goForward()
            }
        case 3:
            myWebKitView.reload()
            
        default:
            print("No Navigation action found...")
        }
    }
}

