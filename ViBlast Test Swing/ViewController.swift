//
//  ViewController.swift
//  ViBlast Test Swing
//
//  Created by Rodrigo Pelorosso on 1/2/18.
//  Copyright © 2018 meli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VBPlayerDelegate {

    var player:VBPlayer?
    @IBOutlet weak var playerView: PlayerView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.player = VBPlayer(cdn: "http://cdn3.viblast.com/streams/dash/vod-bunny/SNE_DASH_CASE3B_SD_REVISED.mpd")
        self.player!.setDisplayLayer(self.playerView?.displayLayer())
        
        self.player!.delegate = self;
        
        self.player!.play()
    }

    
    func playerDidEnterStall(player: VBPlayer?) {
        print("STALL")
    }
    
    
    func playerDidExitStall(player: VBPlayer?) {
        print("EXIT STALL")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

