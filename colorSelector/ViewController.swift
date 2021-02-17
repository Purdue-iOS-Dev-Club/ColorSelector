//
//  ViewController.swift
//  colorSelector
//
//  Created by Harjas Monga on 2/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorWheel: UIView!
    @IBOutlet weak var redSelector: UISlider!
    @IBOutlet weak var greenSelector: UISlider!
    @IBOutlet weak var blueSelector: UISlider!
    @IBOutlet weak var rgbOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        config(selector: redSelector, color: .red)
        config(selector: greenSelector, color: .green)
        config(selector: blueSelector, color: .blue)
        
        colorWheel.layer.cornerRadius = colorWheel.frame.height / 2
        colorWheel.clipsToBounds = true
    }
    
    func config(selector: UISlider, color: UIColor) {
        selector.tintColor = color
        selector.value = 0
    }
    
    @IBAction func colorChanged(_ sender: Any) {
        let r = CGFloat(redSelector.value)
        let g = CGFloat(greenSelector.value)
        let b = CGFloat(blueSelector.value)
        
        colorWheel.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        rgbOutput.text = "(\(Int(r * 255)), \(Int(g * 255)), \(Int(b * 255)))"
    }
}

