//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Konstantin Krumin on 10/03/2025.
//

import UIKit

class ColorsDetailVC: UIViewController {
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
    
}
