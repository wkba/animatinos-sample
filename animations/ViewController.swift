//
//  ViewController.swift
//  animations
//
//  Created by wakabashi on 2017/03/15.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import Lottie
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAnimation(_ sender: Any) {
        let animationView = LOTAnimationView.init(name: "PinJump")
        animationView?.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 250)
        animationView?.contentMode = .scaleAspectFit
        animationView?.loopAnimation = true
        self.view.addSubview(animationView!)
        print("staeted")
        animationView?.play(completion: { (finished) in
            print("finished!!")
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

