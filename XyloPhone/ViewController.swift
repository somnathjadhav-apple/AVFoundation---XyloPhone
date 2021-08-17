//
//  ViewController.swift
//  XyloPhone
//
//  Created by Somnath on 12/08/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func keyPressed(sender: UIButton){
        
        playSound(soundName : sender.currentTitle!)
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            
            sender.alpha = 5.0
            
        }
    }
        
        func playSound (soundName : String)
        {
            
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        
        
    
}

