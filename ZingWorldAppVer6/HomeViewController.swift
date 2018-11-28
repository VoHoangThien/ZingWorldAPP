//
//  HomeViewController.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 10/17/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBAction func btnMore(_ sender: Any) {
        let src = storyboard?.instantiateViewController(withIdentifier: "More") as! UIViewController
        present(src, animated: true, completion: nil)
    }
    
    
    var arrListSong:[String]!
    var arrListImg:[String]!
    var arrListSinger:[String]!
    var inDexReference:UserDefaults!
    var timer:Timer!
    var indexImg:Int = 0
    @IBOutlet weak var tableViewHome: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        inDexReference = UserDefaults()
        
        getHeader()
        
        
        // Do any additional setup after loading the view.
    }
    func getHeader()
    {
        if getSongItems()
        {
            let viewHeader : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 173))
            var imageBGHeader:UIImageView!
            var imageView:UIImageView!
            let lblSongHeader:UILabel = UILabel(frame: CGRect(x: 105, y: 90, width: 262, height: 30))
            let lblSingerHeader:UILabel = UILabel(frame: CGRect(x: 105, y: 120, width: 262, height: 30))
            lblSongHeader.font = UIFont(name: "Arial", size: 20)
            lblSongHeader.textColor = UIColor(ciColor: CIColor(red: 0, green: 168, blue: 255))
            lblSingerHeader.textColor = UIColor.white
            lblSingerHeader.font = UIFont(name: "Arial", size: 17)
            timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true, block: { (chuyen) in
                self.indexImg = self.indexImg + 1
                if self.indexImg == self.arrListImg.count
                {
                    self.indexImg = 0
                }
                do {
                    
                    let url:URL = URL(string: self.arrListImg[self.indexImg])!
                    let dataImage:Data = try Data(contentsOf: url)
                    imageBGHeader = UIImageView(image: UIImage(data: dataImage)!)
                    imageBGHeader.frame = CGRect(x: 0, y: 0, width: 375, height: 173)
                    imageView = UIImageView(image: UIImage(data: dataImage)!)
                    imageView.frame = CGRect(x: 7, y: 75, width: 90, height: 90)
                    imageView.layer.cornerRadius = 20
                    imageView.clipsToBounds = true
                    lblSongHeader.text = self.arrListSong[self.indexImg]
                    lblSingerHeader.text = self.arrListSinger[self.indexImg]
                    // set view
                    viewHeader.addSubview(imageBGHeader)
                    viewHeader.addSubview(imageView)
                    viewHeader.addSubview(lblSongHeader as UIView)
                    viewHeader.addSubview(lblSingerHeader as UIView)
                    self.tableViewHome.tableHeaderView = viewHeader
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
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return 5
        }
        else
        {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0
        {
            let viewTopSong:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 200))
            let lblTopSongHeader:UILabel = UILabel(frame: CGRect(x: 10, y: 10, width: 262, height: 30))
            lblTopSongHeader.text = "TOP BÀI HÁT"
            lblTopSongHeader.textColor = UIColor.black
            viewTopSong.backgroundColor = UIColor.white
            viewTopSong.addSubview(lblTopSongHeader)
            return viewTopSong
        }
        else
        {
            let viewTopSong:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 200))
            let lblTopSongHeader:UILabel = UILabel(frame: CGRect(x: 10, y: 10, width: 262, height: 30))
            lblTopSongHeader.text = "MV HOT"
            lblTopSongHeader.textColor = UIColor.black
            viewTopSong.backgroundColor = UIColor.white
            viewTopSong.addSubview(lblTopSongHeader)
            return viewTopSong
        }
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! HomeTableViewCell

        do {

            let url:URL = URL(string: arrListImg[indexPath.row])!
            let dataImage:Data = try Data(contentsOf: url)
            cell.lblNumber.text = String(indexPath.row + 1)
            cell.imgSongCell.image = UIImage(data: dataImage)
            cell.imgSongCell.layer.cornerRadius = 10
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
        if indexPath.row == 4
        {
            return 200.0
        }
        else
        {
            return 100.0
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrListSong.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollCell", for: indexPath) as! MVCollectionViewCell
        do {
            
            let url:URL = URL(string: arrListImg[indexPath.row])!
            let dataImage:Data = try Data(contentsOf: url)
            cell.imgCollectionCell.image = UIImage(data: dataImage)
            cell.imgCollectionCell.layer.cornerRadius = 5
            cell.imgCollectionCell.clipsToBounds = true
            cell.lblNameMVCollectionCell.text = arrListSong[indexPath.row]
            cell.lblNameSingerCollectionCell.text = arrListSinger[indexPath.row]
        }
        catch
        {
            print("error")
        }
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row:Int = (self.tableViewHome.indexPathForSelectedRow?.row)!
        inDexReference.setValue(row, forKey: "number")
    }
    
    
}
