//
//  RegisterViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/21/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var wvRegister: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL = URL(string: "http://nghenhaconline.co.nf/reg.php")!
        let request:URLRequest = URLRequest(url: url)
        wvRegister.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
