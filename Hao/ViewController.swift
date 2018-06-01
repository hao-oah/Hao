//
//  ViewController.swift
//  Hao
//
//  Created by epita on 16/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //to display something detailed
    
    var detailBook:Books?
    
    @IBOutlet weak var Details: UILabel!
    @IBOutlet weak var Enlarge: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Details.text = detailBook?.Details
        
        if (detailBook?.Title == "The First Shape"){
            Enlarge.image = UIImage(named: "Image")
        }
        if (detailBook?.Title == "The Second Shape"){
            Enlarge.image = UIImage(named: "Image2")
        }
        if (detailBook?.Title == "The Third Shape"){
            Enlarge.image = UIImage(named: "Image3")
        }
        if (detailBook?.Title == "The Fourth Shape"){
            Enlarge.image = UIImage(named: "Image4")
        }
        if (detailBook?.Title == "The Fifth Shape"){
            Enlarge.image = UIImage(named: "Image5")
        }
        if (detailBook?.Title == "The Sixth Shape"){
            Enlarge.image = UIImage(named: "Image6")
        }
        if (detailBook?.Title == "The Seventh Shape"){
            Enlarge.image = UIImage(named: "Image7")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
