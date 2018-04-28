//
//  CompraViewController.swift
//  BitcoinApp
//
//  Created by MacBookDesarrolloTecno on 21/4/18.
//  Copyright © 2018 Technical-PC. All rights reserved.
//

import UIKit

class CompraViewController: UIViewController {
    
    var cantidadDolares:String = ""
    let tipoCambioBitcoin : Double = 8792.37
    var cantidadRecibida:Double = 0

    @IBOutlet weak var txtDolaresCompra: UITextField!
    @IBOutlet weak var txtResBitcoins: UITextField!
    @IBOutlet weak var txtCambio: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(cantidadDolares)
        cantidadRecibida = 20000;
        //cantidadRecibida = Double(cantidadDolares)!
        self.txtDolaresCompra.text = String(cantidadRecibida);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func change(dolares:Double){
        self.txtCambio.text = "Su Cambio es de: $"+String(dolares)
    }
    
    func compraBitcoin(dolares:Double) -> Int{
        var amount : Int = 0
        let bitcoins: Double = (dolares/tipoCambioBitcoin)
        if(bitcoins >= 1){
            amount = Int(floor(bitcoins))
            change(dolares: (dolares-tipoCambioBitcoin))
            return amount
        }
        else
        {
            return 0
        }
        
    }
    
    @IBAction func btnComprar(_ sender: UIButton) {
        
        let amount = self.compraBitcoin(dolares: cantidadRecibida)
        self.txtResBitcoins.text = String(amount)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
