//
//  MixedViewController.swift
//  WebExample
//
//  Created by Shridhar Damale on 9/30/20.
//  Copyright (C) 2020 Acoustic, L.P. All rights reserved.
//

import UIKit
import WebKit

class MixedViewController: UIViewController {

    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = Bundle.main.url(forResource: "tabWithHash", withExtension: "html", subdirectory: "mobile_domcap")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        webView.evaluateJavaScript("document.getElementById('btn_London').click()", completionHandler: nil)
    }

    @IBAction func segmentControlValueChanged(_ sender: Any) {
//        let theWebView = self.webView
        if( self.segmentControl.selectedSegmentIndex == 0 )
        {
            //theWebView!.evaluateJavaScript("document.getElementById('btn_London').click()", completionHandler: nil)
        }
        else if( self.segmentControl.selectedSegmentIndex == 1 )
        {
            let alert = UIAlertController(title: "Lets Go To ..", message: "Paris", preferredStyle: .alert)
                
                 let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
                    //theWebView!.evaluateJavaScript("document.getElementById('btn_Paris').click()", completionHandler: nil)
                 })
                 alert.addAction(ok)
                 DispatchQueue.main.async(execute: {
                    self.present(alert, animated: true)
            })
        }
        else if( self.segmentControl.selectedSegmentIndex == 2 )
        {
            //webView.evaluateJavaScript("document.getElementById('btn_Tokyo').click()", completionHandler: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
