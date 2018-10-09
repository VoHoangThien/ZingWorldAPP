//
//  LinkMp3ViewController.swift
//  zingWorld
//
//  Created by Thien Vo on 10/9/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit
import AVFoundation

class LinkMp3ViewController: UIViewController {

    var inDexReference:UserDefaults!
    var player:AVPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        inDexReference = UserDefaults()
        var row:Int = inDexReference.value(forKey: "number") as! Int
        
        var url:NSURL = NSURL(string: "http://thegioiamnhac.000webhostapp.com/demo/linkmp3.txt")!
        var list:NSString
        do
        {
            list = try NSString(contentsOf: url as URL, encoding: String.Encoding.utf8.rawValue)
            var arrList:[String] = list.components(separatedBy: "#") as [String]
            //play music
            player = AVPlayer()
            var error:NSError? = nil
            var urlMp3:NSURL = NSURL(string: arrList[row])!
            player = AVPlayer(url: urlMp3 as URL)
            player.play()
        }
        catch
        {
            print("error")
        }
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
