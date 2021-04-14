//
//  detailsVC.swift
//  BeybladeBook
//
//  Created by UMUT GUDUL on 14.04.2021.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var beybladeLabel: UILabel!
    
    @IBOutlet weak var kutsalCanavarLabel: UILabel!
    var selectedBeyblade : Beyblade?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beybladeLabel.text = selectedBeyblade?.beyblade
        kutsalCanavarLabel.text = selectedBeyblade?.sacredBeast
        imageView.image = selectedBeyblade?.image
       
    }
    

   

}
