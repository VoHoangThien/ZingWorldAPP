//
//  PlayViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/19/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit
import AVFoundation

class PlayViewController: UIViewController {

    @IBOutlet weak var imgBG: UIImageView!
    @IBOutlet weak var lblNameSong: UILabel!
    @IBOutlet weak var lblNameSinger: UILabel!
    @IBOutlet weak var imgImageCenter: UIImageView!
    @IBOutlet weak var btnPlayOut: UIButton!
    @IBOutlet weak var btnNextOut: UIButton!
    @IBOutlet weak var btnPreviusOut: UIButton!
    @IBOutlet weak var sldTimer: UISlider!
    @IBOutlet weak var lblTimeStart: UILabel!
    @IBOutlet weak var lblTimeEnd: UILabel!
    @IBOutlet weak var btnRepeatOut: UIButton!
    @IBOutlet weak var btnShuffleOut: UIButton!
    var row:Int!
    var arrListSong:[String]!
    var inDexReference:UserDefaults!
    var player:AVPlayer!
    var timer:Timer!
    var corner:Int = 0 // góc xuay
    var checkPlay:Bool = true
    var checkRepeat:Bool = true
    var checkShuffle:Bool = true
    var duration:CMTime!
    var song:Song!
    override func viewDidLoad() {
        super.viewDidLoad()
        // khoi tao dia xoay
        imgImageCenter.layer.cornerRadius = imgImageCenter.frame.width / 2
        imgImageCenter.clipsToBounds = true
        
        
        inDexReference = UserDefaults()
        row = inDexReference.value(forKey: "number") as! Int
        getSong(row)
        
        // Do any additional setup after loading the view.
    }


   
    @IBAction func sldTiming(_ sender: Any) {
//        var currentTime:TimeInterval = CMTimeGetSeconds((self.player.currentItem?.currentTime())!)
//        currentTime =
        //player.currentItem?.currentTime().value = TimeInterval(sldTimer.value)
    }
    @IBAction func btnPlay(_ sender: Any) {
        if checkPlay
        {
            player.pause()
            btnPlayOut.setImage(UIImage(named: "icons8-play-48.png"), for: .normal)
            checkPlay = false
            return
        }
        if !checkPlay
        {
            player.play()
            btnPlayOut.setImage(UIImage(named: "icons8-pause-480.png"), for: .normal)
            checkPlay = true
            return
        }
    }
    
    @IBAction func btnNext(_ sender: Any) {
        row = row + 1
        if row >= arrListSong.count
        {
            row = 0
        }
        getSong(row)
    }
    @IBAction func btnPrevius(_ sender: Any) {
        row = row - 1
        if row < 0
        {
            row = arrListSong.count - 1
        }
        getSong(row)
    }
    @IBAction func btnShuffle(_ sender: Any) {
        if checkShuffle
        {
            btnShuffleOut.setImage(UIImage(named: "icons8-shuffle-96-2.png"), for: .normal)
            if lblTimeEnd.text == String(CMTimeGetSeconds(duration))
            {
                getSong(Int(arc4random_uniform(UInt32(arrListSong.count))))
            }
            checkShuffle = false
            return
        }
        if !checkShuffle
        {
            btnShuffleOut.setImage(UIImage(named: "icons8-shuffle-48.png"), for: .normal)
            checkShuffle = true
            return
        }
        
    }
    @IBAction func btnBack(_ sender: Any) {
        player.pause()

    }
    @IBAction func btnRepeat(_ sender: Any) {
        if checkRepeat
        {
            btnRepeatOut.setImage(UIImage(named: "icons8-repeat-48-3.png"), for: .normal)
            if lblTimeEnd.text == "00:00"
            {
                getSong(row)
            }
            checkRepeat = false
            return
        }
        if !checkRepeat
        {
            btnRepeatOut.setImage(UIImage(named: "icons8-repeat-48-2.png"), for: .normal)
            checkRepeat = true
            return
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getSong(_ row:Int)
    {
        btnPlayOut.setImage(UIImage(named: "icons8-pause-480.png"), for: .normal)
        let urlMp3:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/duongdan.txt")!
        let urlImage:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/anh.txt")!
        let urlSinger:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/casi.txt")!
        let urlSong:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/ten.txt")!
        var listMp3:NSString
        var listImage:NSString
        var listSinger:NSString
        var listSong:NSString
        
        do
        {
            listMp3 = try NSString(contentsOf: urlMp3 as URL, encoding: String.Encoding.utf8.rawValue)
            listImage = try NSString(contentsOf: urlImage as URL, encoding: String.Encoding.utf8.rawValue)
            listSinger = try NSString(contentsOf: urlSinger as URL, encoding: String.Encoding.utf8.rawValue)
            listSong = try NSString(contentsOf: urlSong as URL, encoding: String.Encoding.utf8.rawValue)
            var arrListMp3:[String] = listMp3.components(separatedBy: "#") as [String]
            var arrListImage:[String] = listImage.components(separatedBy: "#") as [String]
            var arrListSinger:[String] = listSinger.components(separatedBy: "#") as [String]
            arrListSong = listSong.components(separatedBy: "#") as [String]
            
            do {
                let urlTemp:URL = URL(string: arrListImage[row])!
                let dataImage:Data = try Data(contentsOf: urlTemp)
                imgBG.image = UIImage(data: dataImage)
                imgImageCenter.image = UIImage(data: dataImage)
                lblNameSinger.text = arrListSinger[row]
                lblNameSong.text = arrListSong[row]
            }
            catch
            {
                print("error")
            }
            
            
            //play music
            player = AVPlayer()
            var _:NSError? = nil
            let urlMp3:NSURL = NSURL(string: arrListMp3[row])!
            player = AVPlayer(url: urlMp3 as URL)
            duration = self.player.currentItem!.asset.duration
            
            self.sldTimer.maximumValue = Float(CMTimeGetSeconds(duration))
            
            
            player.play()
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.actionImageCenter()
            })
        }
        catch
        {
            print("error")
        }
    }
    func actionImageCenter()
    {
        corner += 5
        if corner >= 360 {corner = 0}
        UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.imgImageCenter.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi) * CGFloat(self.corner) / 180, 0, 0, 1)
        }, completion: nil)
        
        updateTiming()
        
    }
    func updateTiming()
    {
        lblTimeStart.text = timing(time: CMTimeGetSeconds((self.player.currentItem?.currentTime())!))
        lblTimeEnd.text = timing(time: CMTimeGetSeconds(duration) - CMTimeGetSeconds((self.player.currentItem?.currentTime())!))
        sldTimer.value = Float(CMTimeGetSeconds((self.player.currentItem?.currentTime())!))
    }
   
    func timing(time:TimeInterval) -> String
    {
        let timeTemp:Int = Int(time)
        let mins:Int = timeTemp / 60
        let seconds:Int = timeTemp % 60
        var stringMin:String = ""
        var stringSecond:String = ""
        if mins < 10
        {
            stringMin = "0\(mins)"
        }
        else
        {
            stringMin = "\(mins)"
        }
        if seconds < 10
        {
            stringSecond = "0\(seconds)"
        }
        else
        {
            stringSecond = "\(seconds)"
        }
        return "\(stringMin):\(stringSecond)"
    }

}
