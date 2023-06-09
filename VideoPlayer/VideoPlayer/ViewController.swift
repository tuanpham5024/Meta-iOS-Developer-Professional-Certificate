//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Pham Anh Tuan on 09/06/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func findVideo() {
        guard Bundle.main.path(forResource: "test", ofType: "MOV") != nil else {
            debugPrint("test.MOV not found")
            
            return
        }
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "test", ofType: "MOV") else {
            debugPrint("Video not found")
            
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {player.play()}
    }


}

