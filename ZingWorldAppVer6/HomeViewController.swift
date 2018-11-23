//
//  HomeViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 10/17/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arrListSong:[String]!
    var arrListImg:[String]!
    var arrListSinger:[String]!
    var inDexReference:UserDefaults!
    var timer:Timer!
    var indexImg:Int = 0
    
    @IBOutlet weak var tableViewHome: UITableView!
    @IBOutlet weak var lblNameSongHeader: UILabel!
    @IBOutlet weak var lblNameSingerHearder: UILabel!
    @IBOutlet weak var imgHeader: UIImageView!
    @IBOutlet weak var imgItemHeader: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inDexReference = UserDefaults()
        if getSongItems()
        {
            timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true, block: { (chuyen) in
                self.indexImg = self.indexImg + 1
                if self.indexImg == self.arrListImg.count
                {
                    self.indexImg = 0
                }
                do {
                    
                    let url:URL = URL(string: self.arrListImg[self.indexImg])!
                    let dataImage:Data = try Data(contentsOf: url)
                    self.imgHeader.image = UIImage(data: dataImage)
                    self.imgItemHeader.layer.cornerRadius = 20
                    self.imgItemHeader.clipsToBounds = true
                    self.imgItemHeader.image = UIImage(data: dataImage)
                    self.lblNameSongHeader.text = self.arrListSong[self.indexImg]
                    self.lblNameSingerHearder.text = self.arrListSinger[self.indexImg]
                }
                catch
                {
                    print("error")
                }
            })
        }
        else
        {
            return
        }
        
        // Do any additional setup after loading the view.
    }
    func getSongItems() -> Bool {
        let url:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/ten.txt")!
        let urlImage:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/anh.txt")!
        let urlSinger:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/casi.txt")!
        var list:NSString
        var listImage:NSString
        var listSinger:NSString
        do
        {
            list = try NSString(contentsOf: url as URL, encoding: String.Encoding.utf8.rawValue)
            listImage = try NSString(contentsOf: urlImage as URL, encoding: String.Encoding.utf8.rawValue)
            listSinger = try NSString(contentsOf: urlSinger as URL, encoding: String.Encoding.utf8.rawValue)
            arrListSong = list.components(separatedBy: "#") as [String]
            arrListImg = listImage.components(separatedBy: "#") as [String]
            arrListSinger = listSinger.components(separatedBy: "#") as [String]
            return true
        }
        catch
        {
            print("error")
            return false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrListSong.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeTableViewCell
        do {
            
            let url:URL = URL(string: arrListImg[indexPath.row])!
            let dataImage:Data = try Data(contentsOf: url)
            cell.imgSongCell.image = UIImage(data: dataImage)
            cell.imgSongCell.layer.cornerRadius = 20
            cell.imgSongCell.clipsToBounds = true
            cell.lblSong.text = arrListSong[indexPath.row]
            cell.lblSinger.text = arrListSinger[indexPath.row]
        }
        catch
        {
            print("error")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "BÀI HÁT"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row:Int = (self.tableViewHome.indexPathForSelectedRow?.row)!
        inDexReference.setValue(row, forKey: "number")
    }
    
    
}
