//
//  ResultViewController.swift
//  Gacha#2
//
//  Created by 川岸樹奈 on 2019/02/09.
//  Copyright © 2019年 juna.Kawagishi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var num:Int!
    @IBOutlet var BackgroundImageView: UIImageView!
    @IBOutlet var MonsterImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        num = Int(arc4random_uniform(10))
        
        if num == 9 {
            MonsterImageView.image = UIImage(named: "monster010")
            BackgroundImageView.image = UIImage(named: "bg_gold@2x")
        }else if num > 7 {
            MonsterImageView.image = UIImage(named: "monster006")
            BackgroundImageView.image = UIImage(named: "bg_red@2x")
        }else{
            MonsterImageView.image = UIImage(named: "monster003")
            BackgroundImageView.image = UIImage(named: "bg_blue@2x")
        }
        
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
