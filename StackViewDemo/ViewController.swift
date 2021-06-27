//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Chrishan Jayakody on 6/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    static let colours = [
        UIColor.blue,
        UIColor.black,
        UIColor.purple,
        UIColor.systemGreen,
        UIColor.red,
        UIColor.darkGray
    ]
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAddClick(_ sender: UIButton) {
        let button = UIButton(frame: sender.frame)
        button.backgroundColor = ViewController.colours.randomElement()
        button.setTitle("Button", for: .normal)
        
        stackView.addArrangedSubview(button)
    }
    
    @IBAction func onRemoveClicked(_ sender: Any) {
        if stackView.arrangedSubviews.count == 0 {
            return
        }
        
        let view = stackView.arrangedSubviews[stackView.arrangedSubviews.count - 1]
        view.removeFromSuperview()
    }
    
    @IBAction func onOrientationClick(_ sender: Any) {
        if stackView.axis == .horizontal {
            stackView.axis = .vertical
        } else {
            stackView.axis = .horizontal
        }
    }
    
    @IBAction func onSpacingChanged(_ sender: UISlider) {
        let spacing = sender.value
        stackView.spacing = CGFloat(spacing)
    }
    
    
}

