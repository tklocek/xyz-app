//
//  ViewController.swift
//  xyz-machine
//
//  Created by Tomek Klocek on 2019-09-27.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("test")
        zLabel.text = "Stage 0"
      //  motionManager = CMMotionManager()
      //  motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
        }
    

    func updateLabels(data: CMAccelerometerData?, error: Error?) {
        xLabel.text = "Stage 1"
        guard let  accelerometerData = data else { return }
        yLabel.text = "Stage 2"
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        let x = formatter.string(for: accelerometerData.acceleration.x)!
        let y = formatter.string(for: accelerometerData.acceleration.y)!
        let z = formatter.string(for: accelerometerData.acceleration.z)!
        
        xLabel.text = "X: \(x)"
        yLabel.text = "Y: \(y)"
        zLabel.text = "Z: \(z)"
        
    }

    
    
}

