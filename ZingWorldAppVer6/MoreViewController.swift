//
//  MoreViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/20/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnContact(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Liên hệ: 1651010166quang@ou.edu.vn để nâng cấp", preferredStyle: UIAlertControllerStyle.alert)
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: .cancel) { (btnOK) in
        }
        alert.addAction(btnOK)
        present(alert, animated: true, completion: nil)
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
