//
//  PlayMusicViewController.swift
//  Another Music Player App
//
//  Created by Thitiwat on 4/5/2560 BE.
//  Copyright © 2560 thitiwat. All rights reserved.
//

import UIKit
import AVFoundation

class PlayMusicViewController: UIViewController {
    
    var passData = String()
    @IBOutlet weak var songPic: UIImageView!

    @IBOutlet weak var nameSong: UILabel!
    
    @IBOutlet weak var value: UISlider!
    
    @IBOutlet weak var bar: UINavigationBar!
    
     var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameSong.text = passData
        
        songPic.image = UIImage(named: passData)
        bar.topItem?.title = passData
        
        let audioPath = Bundle.main.path(forResource: passData, ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch {
            print("Error")
        }
        
        player.play()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pause(_ sender: Any) {
        
        player.pause()
    }
    
    @IBAction func play(_ sender: Any) {
        
        player.play()
    }

    @IBAction func stop(_ sender: Any) {
        
        player.stop()
    }
    @IBAction func changeVolume(_ sender: Any) {
        
        player.volume = value.value
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
