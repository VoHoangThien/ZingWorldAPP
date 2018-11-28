//
//  LoginViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/21/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var btnLoginOut: UIButton!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    var mem:Member!
    //var nameReference:UserDefaults!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLoginOut.layer.cornerRadius = 5
        btnLoginOut.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnLogin(_ sender: Any) {
        mem = Member(name: txtUser.text!, pass: txtPass.text!)
        if mem.checkLogin()
        {
            print("đăng nhập thành công")
            let src = storyboard?.instantiateViewController(withIdentifier: "Main") as! UITabBarController
            present(src, animated: true, completion: nil)
        }
        else
        {
            let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Tên người dùng hoặc mật khẩu không đúng", preferredStyle: UIAlertControllerStyle.alert)
            let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: .cancel) { (btnOK) in
            }
            alert.addAction(btnOK)
            present(alert, animated: true, completion: nil)
            txtUser.text = ""
            txtPass.text = ""
        }
    }
}
