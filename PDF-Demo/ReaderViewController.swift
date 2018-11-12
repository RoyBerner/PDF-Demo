//
//  ReaderViewController.swift
//  PDF-Demo
//
//  Created by Roy Berner on 12/11/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import UIKit
import PDFKit
import WebKit

class ReaderViewController: UIViewController {
    
    
    @IBOutlet weak var pdfView: PDFView!
    @IBOutlet weak var webView: WKWebView!
    
    var urlString:String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let fileURL = URL(fileURLWithPath: self.urlString)
        let request = URLRequest(url: fileURL)
        
        self.webView.load(request)
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
