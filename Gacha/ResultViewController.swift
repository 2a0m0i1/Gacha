//
//  ResultViewController.swift
//  Gacha
//
//  Created by 阿部亜未 on 2021/05/14.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number : Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
        if number == 9{
            //激レアモンスター
            monsterImageView.image = UIImage(named: "kris.png")
            backgroundImageView.image = UIImage(named: "money.JPG")
        } else if number > 6 {
            //レアモンスター
            monsterImageView.image = UIImage(named: "kendall.png")
            backgroundImageView.image = UIImage(named: "tequila.JPG")
        } else {
            //ノーマルモンスター
            monsterImageView.image = UIImage (named: "kylie.png")
            backgroundImageView.image = UIImage (named: "makeup.JPG")
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
