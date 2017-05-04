//
//  ViewController.swift
//  sparker
//
//  Created by Student on 5/2/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idea: UILabel!
    @IBOutlet weak var sparkImage: UIImageView!
    @IBOutlet weak var question: UIImageView!
    @IBOutlet weak var question1: UIImageView!
    @IBOutlet weak var question2: UIImageView!
    @IBOutlet weak var question3: UIImageView!
    @IBOutlet weak var question4: UIImageView!
    @IBOutlet weak var question5: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func spark(_ sender: Any) {
        //creating an array to hold all the letters in the alphabet
        var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        
        //creating an arrayofarrays to hold words for each letter of the alphabet
        var alphabetofalphabet = [
            ["an","apple","axil","alternative","act","abandon","ability","able","about","above","abroad","absence","absent","absolute","abstract","academic","accept","acceptable","acceptance","access","accident","according","account","accurate","accuse","ache","adjustable"],
            ["bubbles","blow","blob","break","bronze","baby","bad","back","backward","bag","bang","bar","barn","base","basket","basic","beat","beautiful","beauty","behavior","behind","bell","below","belt","bench","bend","bark"],
            ["cat","cap","cripple","clamp","clock","cage","calculate","calendar","calf","call","calm","camera","camp","campaign","campus","can","cancel","cancer","candidate","candy","capable","capacity","capital","captain","capture","car","count"],
            ["dog","dip","duck","dodge","dive","drone","drink","daily","dam","damage","damp","dance","danger","dangerous","dare","dark","data","date","dawn","day","dead","deaf","deal","death","debate","debt","decade","decay","decide","decision","decisive","declare","decline"],
            ["elf","else","extra","empty","excel"],
            ["file","fan","flop","freak","found"],
            ["give","golf","gif","ginger","gelatinous"],
            ["Hot","Hill","Hyper","Humid","Huge","Home","Hope","Hop","Hair","Honest"],
            ["isle","itch","inch","ink","ice"],
            ["job","jelly","jolly","jinx","join"],
            ["kid","kiln","kick","kill","kryptonite"],
            ["lock","limb","limp","lost","listen"],
            ["man","monkey","mile","money","missing"],
            ["nope","nob","noel","nine","nice"],
            ["Optic","Open","Ore","Oil","Odd","Over","Operation","Online","Old","Obstruír"],
            ["Pause","Power","Pool","Pack","Pocket","Pounce","Patient","Person","Pipe","Pencil"],
            ["quack","queen","quiet","quench","quick"],
            ["rad","radius","ramp","ride","rist"],
            ["sat","style","stink","slick","spend"],
            ["table","tin","tile","tip","tickle"],
            ["under","underwear","umbrella,","uncle","up"],
            ["vent","vehicle","vial","vice","vvegetable"],
            ["water","wimp","wet","wild","wrinkle"],
            ["xylaphone","x-ray","xylidine","xebecs","xylan"],
            ["yell","yelp","you","yeast","yuck"],
            ["zebra","zoo","zipper","zip","zestful"]
        ]
        
        //new variables to choose a random array from the arrayofarrays, then chooses a random word from the array that was chosen
        var newRanNum = Int(arc4random_uniform(UInt32(alphabetofalphabet.count-1)))
        var newRanNum2 = Int(arc4random_uniform(UInt32(alphabetofalphabet[newRanNum].count-1)))
        
        var newRanNum3 = Int(arc4random_uniform(UInt32(alphabetofalphabet.count-1)))
        var newRanNum4 = Int(arc4random_uniform(UInt32(alphabetofalphabet[newRanNum3].count-1)))
        
        var newRanNum5 = Int(arc4random_uniform(UInt32(alphabetofalphabet.count-1)))
        var newRanNum6 = Int(arc4random_uniform(UInt32(alphabetofalphabet[newRanNum5].count-1)))
        
        //checks to make sure that the program won’t choose one of the arrays twice
        while newRanNum == newRanNum3 {
            var newRanNum = Int(arc4random_uniform(UInt32(alphabetofalphabet.count-1)))
        }
        while newRanNum == newRanNum5 {
            var newRanNum = Int(arc4random_uniform(UInt32(alphabetofalphabet.count-1)))
        }
        while newRanNum3 == newRanNum5 {
            var newRanNum3 = Int(arc4random_uniform(UInt32(alphabetofalphabet.count-1)))
        }
        
        //prints out the three random words that were chosen
        idea.text = "\(alphabetofalphabet[newRanNum][newRanNum2]) \(alphabetofalphabet[newRanNum3][newRanNum4]) \(alphabetofalphabet[newRanNum5][newRanNum6])"
        
        question.image = sparkImage.image
        question1.image = sparkImage.image
        question2.image = sparkImage.image
        question3.image = sparkImage.image
        question4.image = sparkImage.image
        question5.image = sparkImage.image
        

    }

}
