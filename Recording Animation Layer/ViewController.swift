//
//  ViewController.swift
//  Recording Animation Layer
//
//  Created by Dotsquares on 1/30/17.
//  Copyright © 2017 Dotsquares. All rights reserved.
//

import UIKit

extension UIView {
    // new functionality to add to SomeType goes here
    func rotateView(byAngle: CGFloat)
    {
        if byAngle == 0 {
            UIView.animate(withDuration: 1.0, animations: {
                self.transform = CGAffineTransform.identity;
            });
        }
        else
        {
            UIView.animate(withDuration: 1.0, animations: {
                self.transform = CGAffineTransform.init(rotationAngle: byAngle);
            });
        }
    }
}

class ViewController: UIViewController,RecordingButtonDelegate {

    @IBOutlet weak var btnRecord: RecordingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        btnRecord.setOutlineColor(color: UIColor.cyan);
//        btnRecord.setInnerCircleColor(color: UIColor.cyan);
//        btnRecord.setprogessColor(color: UIColor.blue);
        btnRecord.recordingDuration = 20;
        btnRecord.delegate=self;
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func btnRecordAction(_ sender: Any) {
        btnRecord.record();
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // RecordingButtonDelegate Methods
    func didStartCapture() {
        // call when capturing starts.
    }

    func didEndCapture() {
        // call when capturing end.
    }
    
}

