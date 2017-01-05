//
//  ViewController.swift
//  samplePianoApp
//
//  Created by Muneharu Onoue on 2016/12/29.
//  Copyright © 2016年 Muneharu Onoue. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var C_ap:AVAudioPlayer!
    var D_ap:AVAudioPlayer!
    var E_ap:AVAudioPlayer!
    var F_ap:AVAudioPlayer!
    var G_ap:AVAudioPlayer!
    var A_ap:AVAudioPlayer!
    var B_ap:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func c(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "C", ofType: "mp3")!)
        C_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        C_ap.play()
    }

    @IBAction func d(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "D", ofType: "mp3")!)
        D_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        D_ap.play()
    }

    @IBAction func e(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "E", ofType: "mp3")!)
        E_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        E_ap.play()
    }

    @IBAction func f(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "F", ofType: "mp3")!)
        F_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        F_ap.play()
    }

    @IBAction func g(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "G", ofType: "mp3")!)
        G_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        G_ap.play()
    }

    @IBAction func a(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "A", ofType: "mp3")!)
        A_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        A_ap.play()
    }

    @IBAction func b(_ sender: Any) {
        let soundUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "B", ofType: "mp3")!)
        B_ap = try! AVAudioPlayer(contentsOf: soundUrl)
        B_ap.play()
    }
}

