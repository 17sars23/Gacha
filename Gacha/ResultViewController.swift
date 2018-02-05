//
//  ResultViewController.swift
//  Gacha
//
//  Created by kawagishi on 2018/02/04.
//  Copyright © 2018年 juna Kawagishi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number:Int! //乱数用
    
    //背景とモンスター画像を表示するため
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        number = Int(arc4random_uniform(10))
        
        if number == 9 {
            monsterImageView.image = UIImage(named:"monster010")
            backgroundImageView.image = UIImage(named:"bg_gold")
        }else if number > 7 {
            monsterImageView.image = UIImage(named:"monster006")
            backgroundImageView.image = UIImage(named:"bg_red")
        }else{
            monsterImageView.image = UIImage(named:"monster003")
            backgroundImageView.image = UIImage(named:"bg_blue")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(){
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
