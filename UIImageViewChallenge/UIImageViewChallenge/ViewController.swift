//
//  ViewController.swift
//  UIImageViewChallenge
//
//  Created by Ricky Bobby
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - MVP
    @IBOutlet var disappearingImageView: UIImageView!
    
    
    
    //MARK: - Stretch #3 - Part I
    
    @IBOutlet var seeMeLabel: UILabel!
    
    
    @IBOutlet weak var slider: UISlider!
    var sliderValue: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func whenSliderMoved(_ slider: UISlider) {
        //TODO: - MVP, Uncomment the line below
        disappearingImageView.alpha = CGFloat(slider.value)
        
        //MARK: - Stretch #3 - Part II
        if slider.value == 0{
            seeMeLabel.text = "Now You Don't."
        }
        if slider.value == 1{
            seeMeLabel.text = "Now You See Me."
        }
        
        
    }
    
    //MARK: - Stretch #1 and #2
    
    @IBAction func changeMeButtonTapped(_ sender: Any) {
        disappearingImageView.image = UIImage(named: "dog")
        
    }
    
    @IBAction func changeMeBackButtonTapped(_ sender: Any) {
        disappearingImageView.image = UIImage(named: "Binary")
    }
    
    
}

