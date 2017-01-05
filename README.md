# 第14回: １時間でiPhoneアプリを作ろう
## ピアノアプリ

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/samplePianoApp/blob/master/Assets/sample.png" /></div>
  
  当アカウントへ訪れていただき、誠にありがとうございます。第14回アプリ教室では、ピアノアプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。
  
## アプリ教室に興味ある方、歓迎します。  
  Meetup  
  http://www.meetup.com/ios-dev-in-namba/
  
## 別途アプリ教室(有料)も開いております  
  http://learning-ios-dev.esy.es/  

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com  

## アプリ作成手順

#### 0, アプリ開発準備
> 0-1. [ピアノ音声ファイルをダウンロード](https://github.com/iosClassForBeginner/samplePianoApp/raw/master/Assets/PianoSound.zip)

> 0-2. iphone画面の向きをlandscape leftのみ選択

#### 1, Storyboardで、アプリのデザイン
> 1-1. main.storyboardを選択し、UI部品からUIButtonを配置します。(ドラッグ&ドロップ)

> 1-2. StoryboardのUIButtonを、ViewController.swiftに紐づけます（actionで）

> 1-3. Uibuttonに枠線を入れたい場合、user defined runtime attributesに以下を追加
layer.borderWidth Number {太さ}
layer.borderUIColor Color {色}

#### 2, ViewController.swiftにコード記述
- 以下コードブロックを記入
  
```Swift
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
```
