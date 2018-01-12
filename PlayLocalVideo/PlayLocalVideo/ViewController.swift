//
//  ViewController.swift
//  PlayLocalVideo
//
//  Created by kxrt_013 on 2018/1/11.
//  Copyright © 2018年 kxrt_013. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var data = [
        video(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        video(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        video(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        video(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        video(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        video(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
    ]
    
    
    var playViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    

    @IBOutlet weak var videoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTableView.delegate = self
        videoTableView.dataSource = self
    }

    @IBAction func playVideoButtonDidTouch(_ sender: Any) {
        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        playerView = AVPlayer(url: URL(fileURLWithPath: path!))
        playViewController.player = playerView
        
        self.present(playViewController, animated: true) {
            self.playViewController.player?.play()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = videoTableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        let video = data[indexPath.row]
        
        
        cell.videoModel = video
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

