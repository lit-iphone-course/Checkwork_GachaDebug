//MARK: ①インデントを修正しよう！ インデントはプログラムを見やすくするために入れる空白のことだよ！
//MARK: ②8行目の変数namberのスペルが間違っています。正しく修正しよう！
//MARK: ③結果画面に移動する時にエラー(this class is not key value coding-compliant for the key ~ )が出てしまっているよ！修正しよう！
//MARK: ④結果画面の「もう1度引く」を押しても画像が変わらないよ！修正しよう！
//MARK: ⑤結果画面に配置したはずの戻るボタンが表示されていないので、Storyboardを編集して直そう！

import UIKit

class ResultViewController: UIViewController {

    var namber: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
override func viewDidLoad() {
super.viewDidLoad()

namber = Int.random(in: 0...9)

if namber == 9 {
characterImageView.image = UIImage(named: "IoTMesh")
backgroundImageView.image = UIImage(named: "bgBlue")
} else if namber >= 7 {
characterImageView.image = UIImage(named: "camera")
backgroundImageView.image = UIImage(named: "bgGreen")
} else {
characterImageView.image = UIImage(named: "iphone")
backgroundImageView.image = UIImage(named: "bgRed")
}
}
    
    @IBAction func redraw() {
        namber = Int.random(in: 0...9)
        
        if namber == 9 {
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if namber >= 7 {
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

