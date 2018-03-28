//
//  ViewController.swift
//  Is this a Disney Movie?
//
//  Created by Valverde, Charity on 3/26/18.
//  Copyright © 2018 Valverde, Charity. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
        
        var lifesize:Int = 0
        var wish:Int = 0
        var rugrats:Int = 0
        var johnnytsunami:Int = 0
        var total:Int = 0
    

    
    @IBAction func selectLifesize(_ sender: UISwitch) {
        
        if sender.isOn {
            lifesize = 1
        }
        else {
            lifesize = 0
        }

        
    }
    
    
    

    @IBAction func selectWISH(_ sender: UISwitch) {
        if sender.isOn {
            wish = 1
        }
        else {
            wish = 0
        }
        
    }
    
    
    
    @IBAction func selectRugrats(_ sender: UISwitch) {
        if sender.isOn {
            rugrats = 1
        }
        else {
            rugrats = 0
        }
        
        
    }
    
    

    
    @IBAction func selectJohnnytsunami(_ sender: UISwitch) {
        if sender.isOn {
            johnnytsunami = 1
        }
        else {
            johnnytsunami = 0
        }
        
        
    }
    
    
  
    @IBOutlet weak var lbl: UILabel!
    var time=0
    //timer
    
    var timer=Timer ()
    
    @IBAction func start(_ sender: UIButton)
    
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo : nil, repeats: true)
        
    }
    
   
    @IBAction func pause(_ sender: UIButton)
    
    {
        timer.invalidate()
        }
    
    
    
    @IBAction func reset(_ sender: UIButton)
    
    {
        timer.invalidate()
        time = 0
    }
    
    @objc func action()
    {
        time += 1
        lbl.text = String(time)
        
    }
    
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    
    

    @IBAction func Submit(_ sender: UIButton) {
        total = lifesize + wish + rugrats + johnnytsunami
      // score.text = "\(total)"
        
        if(total <= 2) {
            myTotal.text = "Go back to the 90's!"
             myImage.image = UIImage(named: "bummer")               }
            
            
            
        else if(total >= 2 && total <= 3){
            myTotal.text = "You are an Expert"
            myImage.image = UIImage(named: "pineapple")
        }
            
        else {
            myTotal.text = "Keep Trying Buddy!"
            myImage.image = UIImage(named: "keeptrying")
            
        }

        
    }
    
    

    
    
    @IBOutlet weak var myImage: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

