//
//  ViewController.swift
//  MusicWaveDemo
//
//  Created by Bhavnish on 06/09/2022.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onGenerate(_ sender: Any) {
      
        let url = Bundle.main.url(forResource: "audio", withExtension: "mp3")!
       WaveGenerator().generateWaveImage(from: url, in: CGSize(width: 600, height: 200), completion: {[weak self] (waveFormImage) in
            
            DispatchQueue.main.async {
                self?.imageView.image = waveFormImage
            }
          
        })
        
        
        
    }
    
    


}

