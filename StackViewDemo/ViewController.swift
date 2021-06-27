//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Chrishan Jayakody on 6/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAddClick(_ sender: UIButton) {
        let button = UIButton(frame: sender.frame)
        button.backgroundColor = .blue
        button.setTitle("Button", for: .normal)
        
        stackView.addArrangedSubview(button)
    }
    


}

