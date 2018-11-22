//
//  member.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/21/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import Foundation
class Member
{
    var name:String!
    var pass:String!
    init(name:String, pass:String) {
        self.name = name
        self.pass = pass
    }
    func checkLogin()->Bool
    {
        var arrListUser:[String]!
        var arrlistPass:[String]!
        let urlUser:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/user.txt")!
        let urlPass:NSURL = NSURL(string: "http://nghenhaconline.co.nf/demo/pass.txt")!
        var listUser:NSString
        var listPass:NSString
        
        do
        {
            listUser = try NSString(contentsOf: urlUser as URL, encoding: String.Encoding.utf8.rawValue)
            listPass = try NSString(contentsOf: urlPass as URL, encoding: String.Encoding.utf8.rawValue)
            arrListUser = listUser.components(separatedBy: "#") as [String]
            arrlistPass = listPass.components(separatedBy: "#") as [String]
        }
        catch
        {
            print("error")
        }
        var number:Int = 0
        for user:String in arrListUser {
            if self.name == user
            {
                break
            }
            else
            {
                number = number + 1
            }
        }
        if number < arrListUser.count && self.name == arrListUser[number] && self.pass == arrlistPass[number]
        {
            return true
        }
        else {return false}
    }
}
