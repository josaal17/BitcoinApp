//
//  ViewController.swift
//  BitcoinApp
//
//  Created by MacBookDesarrolloTecno on 21/4/18.
//  Copyright © 2018 Technical-PC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDolares: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnComprar(_ sender: Any) {
        
        /*let viewControllerB = CompraViewController()
        viewControllerB.cantidadDolares = txtDolares.text!
        navigationController?.show(viewControllerB, sender: self)
        //navigationController?.pushViewController(viewControllerB, animated: true)*/
    }
}

