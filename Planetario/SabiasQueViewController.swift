//
//  SabiasQueViewController.swift
//  Planetario
//
//  Created by Daniel García Barajas on 16/10/20.
//

import UIKit

class SabiasQueViewController: UIViewController {

    @IBOutlet weak var imagenSabiasQue: UIImageView!
    let datos = ["Pregunta 1", "Pregunta 2", "Pregunta 3", "Pregunta 4", "Pregunta 5", "Pregunta 6", "Pregunta 7", "Pregunta 8", "Pregunta 9", "Pregunta 10", "Pregunta 11", "Pregunta 12", "Pregunta 13", "Pregunta 14", "Pregunta 15", "Pregunta 16", "Pregunta 17", "Pregunta 18", "Pregunta 19", "Pregunta 20", "Pregunta 21", "Pregunta 22", "Pregunta 23"]
    @IBOutlet weak var labelPregunta: UILabel!
    var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagenSabiasQue.image = UIImage(named: datos[num])
        labelPregunta.text = "Pregunta \(num + 1)"
        // Do any additional setup after loading the view.
    }
    @IBAction func datoSiguiente(_ sender: Any) {
        if num < (datos.count - 1){
            num = num + 1
        } else {
            num = 0
        }
        imagenSabiasQue.image = UIImage(named: datos[num])
        labelPregunta.text = "Pregunta \(num + 1)"
    }
    
    @IBAction func datoPrevio(_ sender: Any) {
        if num > (0){
            num = num - 1
        } else {
            num = (datos.count - 1)
        }
        imagenSabiasQue.image = UIImage(named: datos[num])
        labelPregunta.text = "Pregunta \(num + 1)"
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
