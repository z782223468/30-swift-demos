//
//  ViewController.swift
//  CustomFont
//
//  Created by kxrt_013 on 2018/1/11.
//  Copyright © 2018年 kxrt_013. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var data = ["30 Days Swift", "这些字体特别适合打「奋斗」和「理想」", "谢谢「造字工房」，本案例不涉及商业使用", "使用到造字工房劲黑体，致黑体，童心体", "呵呵，再见🤗 See you next Project", "微博 @Allen朝辉",
                "测试测试测试测试测试测试",
                "123",
                "Alex",
                "@@@@@@"]
    
    var fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "edundot", "Gaspar Regular"]
    
    var fontRowIndex = 0
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var changeFontButton: UIButton!
    
    @IBAction func changeFontDidTouch(_ sender: Any) {
        fontRowIndex = (fontRowIndex + 1) % 5
        print(fontNames[fontRowIndex])
        tableview.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        
        changeFontButton.layer.cornerRadius = 55
    }

    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return UIStatusBarStyle.lightContent
//    }
    
    //  UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "FontCell", for: indexPath)
        let text = data[indexPath.row]
        
        cell.textLabel?.text = text
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont.init(name: self.fontNames[fontRowIndex], size: 16)
        
        return cell
    }
    
    //  UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

