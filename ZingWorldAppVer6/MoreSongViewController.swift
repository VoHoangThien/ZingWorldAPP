//
//  MoreSongViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/26/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class MoreSongViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrListSong:[String]!
    var arrListImg:[String]!
    var arrListSinger:[String]!
    var inDexMoreReference:UserDefaults!
    @IBOutlet weak var tableMoreSong: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        inDexMoreReference = UserDefaults()

        getSongItems()
        // Do any additional setup after loading the view.
    }

    func getSongItems() {
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
            
        }
        catch
        {
            print("error")
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrListSong.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! MoreSongTableViewCell
        do {
            
            let url:URL = URL(string: arrListImg[indexPath.row])!
            let dataImage:Data = try Data(contentsOf: url)
            cell.lblNumberMore.text = String(indexPath.row + 1)
            cell.imgMore.image = UIImage(data: dataImage)
            cell.imgMore.layer.cornerRadius = 10
            cell.imgMore.clipsToBounds = true
            cell.lblSongMore.text = arrListSong[indexPath.row]
            cell.lblSingerMore.text = arrListSinger[indexPath.row]
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row:Int = (self.tableMoreSong.indexPathForSelectedRow?.row)!
        inDexMoreReference.setValue(row, forKey: "numberMore")
    }
    
    
}
