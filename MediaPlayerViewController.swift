//
//  MediaPlayerViewController.swift
//  MediaPlayer
//
//  Created by daniel ophir on 16/05/15.
//  Copyright (c) 2015 daniel ophir. All rights reserved.
//

import UIKit
import AVFoundation

class MediaPlayerViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func PauseButton(sender: UIBarButtonItem) {
        player.pause()
    }
    
    @IBAction func StopButton(sender: UIBarButtonItem) {
        player.stop()
    }
    
    @IBAction func PlayButton(sender: UIBarButtonItem) {
     player.play()
    }
    
    @IBOutlet var Slider: UISlider!
    
    @IBAction func SliderController(sender: UISlider) {
        player.volume = Slider.value
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        var filelocation = NSString(string: NSBundle.mainBundle().pathForResource(self.navigationItem.title, ofType: "mp3")!)
        var error : NSError? = nil
        player = AVAudioPlayer(contentsOfURL: NSURL(string: filelocation), error: &error)
    }
}
