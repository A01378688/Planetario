//
//  PuntuacionViewController.swift
//  Planetario
//
//  Created by Daniel García Barajas on 19/11/20.
//

import UIKit

class PuntuacionViewController: UIViewController {

    @IBOutlet weak var puntosLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let puntosNuevos = puntos
        puntosLabel.text = "\(puntosNuevos)/5"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
