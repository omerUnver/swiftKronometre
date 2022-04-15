//
//  ViewController.swift
//  kronometre
//
//  Created by M.Ömer Ünver on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var zaman = 0
    var zamanlayici = Timer()
    @IBOutlet weak var saat: UILabel!
    
    @IBAction func basla(_ sender: Any) {
        saat.text = String(zaman)
        zaman = 0
        zamanlayici =  Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerApp), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopBtn(_ sender: Any) {
        zamanlayici.invalidate()
    }
    
    @objc func timerApp(){
        saat.text = String(zaman)
        zaman += 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

