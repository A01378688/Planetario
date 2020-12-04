//
//  QuizViewController.swift
//  Planetario
//
//  Created by Daniel García Barajas on 13/11/20.
//

import UIKit

var puntos = 0
class QuizViewController: UIViewController {
    
    let preguntas = ["¿Cuántos planetas hay en nuestro sistema solar?","¿Cuál es el tercer planeta más cerca del Sol?","¿Cuál es el planeta más grande?", "¿Cuál es el nombre de nuestra galaxia?","¿Qué planetas no tienen una luna?"]
    let respuestas = [["8 planetas","9 planetas", "7 planetas"],["Tierra","Marte","Júpiter"],["Júpiter","Saturno","Plutón"],["Vía Láctea","Andromeda","Big Bang"],["Mercurio y Venus","Tierra y Marte","Venus y Saturno"]]
    
    var preguntaActual = 0
    var respuestaCorrecta:UInt32 = 0
    
    @IBOutlet weak var progresoPreguntasLabel: UILabel!
    @IBOutlet weak var preguntaLabel: UILabel!
    @IBAction func respuestaButton(_ sender: Any) {
        if ((sender as AnyObject).tag == Int(respuestaCorrecta)){
            print("Correcto")
            puntos += 1
        } else {
            print("Incorrecto")
        }
        
        if (preguntaActual != preguntas.count){
            nuevaPregunta()
        } else {
            performSegue(withIdentifier: "puntuacion", sender: self)
            print(puntos)
        }
        progresoPreguntasLabel.text = "\(preguntaActual)/\(preguntas.count)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        nuevaPregunta()
        
    }
    func nuevaPregunta(){
        preguntaLabel.text = preguntas[preguntaActual]
        respuestaCorrecta = arc4random_uniform(3) + 1
        
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...3{
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(respuestaCorrecta)){
                button.setTitle(respuestas[preguntaActual][0], for: .normal)
            } else {
                button.setTitle(respuestas[preguntaActual][x], for: .normal)
                x = 2
            }
            
        }
        preguntaActual += 1
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
