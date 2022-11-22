//
//  ViewController.swift
//  audio
//
//  Created by SAIPAVAN SIRIPURAM on 17/11/22.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController {
    var player:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
       super.viewDidLoad()
//        ---------Audio----------
        do{
            let audiopath = Bundle.main.path(forResource: "muthu", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!) as URL)
        }
        catch{
            
        }
        // Do any additional setup after loading the view.

    }
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.stop()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.currentTime=0
        player.play()
    }
    
    @IBAction func replay(_ sender: Any) {
        player.pause()
    }
    
    //        ---------Video----------
            var path:NSURL!
            var videoPlayer:AVPlayer!
            var videoPlayerController:AVPlayerViewController!
    
    
    @IBAction func vd(_ sender: Any) {
        path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "mp4")!)
        videoPlayer=AVPlayer(url: path as URL)
        videoPlayer=AVPlayer(url: path as URL)
        videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = videoPlayer
        self.present(videoPlayerController, animated: true, completion: nil)
        self.videoPlayerController.player?.play()
        
    }
}

