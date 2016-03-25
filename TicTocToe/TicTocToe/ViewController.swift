//
//  ViewController.swift
//  TicTocToe
//
//  Created by Randhir Kumar on 3/6/16.
//  Copyright © 2016 @Randhir Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter :Int = 0
    var oddCount:Int = 0
    var evenCount:Int = 0
    
    var winArray1 = [1, 2, 3]
    var winArray2 = [1, 4, 7]
    var winArray3 = [1, 5, 9]
    var winArray4 = [4, 5, 6]
    var winArray5 = [2, 5, 8]
    var winArray6 = [3, 5, 7]
    var winArray7 = [7, 8, 9]
    var winArray8 = [3, 6, 9]
    var oddArray:[Int] = []
    var evenArray:[Int] = []


    
    var tag1: Int = 0
    var tag2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(sender: AnyObject) {
        counter++
        
        let tmpButton = self.view.viewWithTag(sender.tag) as? UIButton
        
        if counter % 2 == 0{
            evenCount++
            tmpButton! .setBackgroundImage(UIImage(named: "ximage"), forState:UIControlState.Normal)
            tag1 = sender.tag
           
            evenArray.append(sender.tag)
            if evenCount > 2 {
             self .winnerIs(evenArray,a: "a")
            }
        
        }
        else {
            oddCount++
            tmpButton! .setBackgroundImage(UIImage(named: "oimage"), forState:UIControlState.Normal)
            tag2 = sender.tag
            oddArray.append(sender.tag)
            if oddCount > 2 {
                self .winnerIs(oddArray, a: "b")

            }
            
            
        
        }

    }
    
    func  winnerIs(tag:[Int] , a:String){
        
        if winArray1 == tag || winArray2 == tag || winArray3 == tag || winArray4 ==  tag || winArray5 == tag || winArray6 == tag || winArray7 == tag || winArray8 == tag
        {
            
            if  a == "a" {
                print("the winner is X")
                return
            }
            else if a == "b"  {
                 print("the winner is 0")
                return
            }
            }
    }

}

