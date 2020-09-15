//
//  ViewController.swift
//  ituDareGame
//
//  Created by maya on 2020/09/15.
//  Copyright © 2020 maya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doushitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doushitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change() {
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        index += 1
        
        if index > 3 {
            index = 0
        }
    }
    @IBAction func reset() {
        itsuLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doushitaLabel.text = "---"
        //index初期化
        index = 0
    }
    
    @IBAction func random() {
        
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doushitaIndex = Int.random(in: 0...3)
        
        //コンソールに出力
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doushitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
    }

}

