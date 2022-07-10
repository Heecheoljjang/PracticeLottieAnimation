//
//  ViewController.swift
//  LottieAnimation
//
//  Created by HeecheolYoon on 2022/07/10.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인 화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    let animationView: AnimationView = {
        let aniView = AnimationView(name: "111592-happy-pencil")
        aniView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        //aniView.contentMode = .scaleToFill
        return aniView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(animationView)
        animationView.center = view.center
        
        animationView.play { _ in
            self.view.addSubview(self.titleLabel)
            self.animationView.removeFromSuperview()
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.frame = CGRect(x: 170, y: 200, width: 100, height: 100)
        }
        
        
    }

    

}

