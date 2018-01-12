//
//  ViewController.swift
//  StopWatch
//
//  Created by kxrt_013 on 2018/1/11.
//  Copyright © 2018年 kxrt_013. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var counter = 0.0
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = String(counter)
    }
    
    
    @IBAction func resetButtonDidTouch(_ sender: Any) {
        counter = 0
        timeLabel.text = String(counter)
        playBtn.isEnabled = true
        pauseBtn.isEnabled = false
        timer.invalidate()
    }
    
    
    @IBAction func playButtonDidTouch(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        playBtn.isEnabled = false
        pauseBtn.isEnabled = true
    }
    
    
    @IBAction func pauseButtonDidTouch(_ sender: Any) {
        playBtn.isEnabled = true
        pauseBtn.isEnabled = false
        timer.invalidate()
    }
    
    
    @objc func UpdateTimer() {
        counter += 0.1
        timeLabel.text = String(format:"%.1f",counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

