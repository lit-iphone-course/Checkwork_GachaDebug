//MARK: ①インデントの修正は「command + A」→ 「control + i」で行う
//MARK: ③Storyboardで結果画面のViewControllerを選択し、Utility area → Custom Class → ResultViewControllerを選択
//MARK: ⑤Storyboardで戻るボタンの階層を上に引き上げる

import UIKit

class ResultViewController: UIViewController {
    //MARK: ②「右クリック → Refactor → Rename」でnumberに修正する
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)
        
        if number == 9 {
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if number >= 7 {
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
        } else {
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        }
    }
    
    //MARK: ④関連付けする
    @IBAction func redraw() {
        number = Int.random(in: 0...9)
        
        if number == 9 {
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if number >= 7 {
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
        } else {
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        }
        
    }
    
    @IBAction func back() {
        self.dismiss(animated: true)
    }
    
    
}

