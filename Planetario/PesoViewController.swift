//
//  PesoViewController.swift
//  Planetario
//
//  Created by Daniel García Barajas on 02/10/20.
//

import UIKit

class PesoViewController: UIViewController {

    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var pesoLunaLabel: UILabel!
    @IBOutlet weak var pesoRealLunaLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var pesoRealMercurioLabel: UILabel!
    @IBOutlet weak var pesoRealVenusLabel: UILabel!
    @IBOutlet weak var pesoRealMarteLabel: UILabel!
    @IBOutlet weak var pesoRealJupiterLabel: UILabel!
    @IBOutlet weak var pesoRealSaturnoLabel: UILabel!
    @IBOutlet weak var pesoRealUranoLabel: UILabel!
    @IBOutlet weak var pesoRealNeptunoLabel: UILabel!
    @IBOutlet weak var pesoRealPlutonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ingresarPesoButton(_ sender: Any) {
        let pesoIngresado: Float = Float(pesoTextField.text!) ?? 0
        let masa = (Double(pesoIngresado)/9.81)
        let pesoLuna = (Double(masa)*1.62)
        pesoRealLunaLabel.text = "\(String(format:"%.2f", pesoLuna)) kg"
        let pesoMercurio = (Double(masa))*3.7
        pesoRealMercurioLabel.text = "\(String(format:"%.2f", pesoMercurio)) kg"
        let pesoVenus = (Double(masa))*8.87
        pesoRealVenusLabel.text = "\(String(format:"%.2f", pesoVenus)) kg"
        let pesoMarte = (Double(masa))*3.7
        pesoRealMarteLabel.text = "\(String(format:"%.2f", pesoMarte)) kg"
        let pesoJupiter = (Double(masa))*24.79
        pesoRealJupiterLabel.text = "\(String(format:"%.2f", pesoJupiter)) kg"
        let pesoSaturno = (Double(masa))*10.44
        pesoRealSaturnoLabel.text = "\(String(format:"%.2f", pesoSaturno)) kg"
        let pesoUrano = (Double(masa))*8.87
        pesoRealUranoLabel.text = "\(String(format:"%.2f", pesoUrano)) kg"
        let pesoNeptuno = (Double(masa))*11.15
        pesoRealNeptunoLabel.text = "\(String(format:"%.2f", pesoNeptuno)) kg"
        let pesoPluton = (Double(masa))*0.62
        pesoRealPlutonLabel.text = "\(String(format:"%.2f", pesoPluton)) kg"
    }
    @IBAction func valueChangedSeg(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0{
            let pesoIngresado: Float = Float(pesoTextField.text!) ?? 0
            let masa = (Double(pesoIngresado)/9.81)
            let pesoLuna = (Double(masa)*1.62)
            pesoRealLunaLabel.text = "\(String(format:"%.2f", pesoLuna)) kg"
            let pesoMercurio = (Double(masa))*3.7
            pesoRealMercurioLabel.text = "\(String(format:"%.2f", pesoMercurio)) kg"
            let pesoVenus = (Double(masa))*8.87
            pesoRealVenusLabel.text = "\(String(format:"%.2f", pesoVenus)) kg"
            let pesoMarte = (Double(masa))*3.7
            pesoRealMarteLabel.text = "\(String(format:"%.2f", pesoMarte)) kg"
            let pesoJupiter = (Double(masa))*24.79
            pesoRealJupiterLabel.text = "\(String(format:"%.2f", pesoJupiter)) kg"
            let pesoSaturno = (Double(masa))*10.44
            pesoRealSaturnoLabel.text = "\(String(format:"%.2f", pesoSaturno)) kg"
            let pesoUrano = (Double(masa))*8.87
            pesoRealUranoLabel.text = "\(String(format:"%.2f", pesoUrano)) kg"
            let pesoNeptuno = (Double(masa))*11.15
            pesoRealNeptunoLabel.text = "\(String(format:"%.2f", pesoNeptuno)) kg"
            let pesoPluton = (Double(masa))*0.62
            pesoRealPlutonLabel.text = "\(String(format:"%.2f", pesoPluton)) kg"
        }
        
        if segmentedControl.selectedSegmentIndex == 1{
            let pesoIngresado: Float = Float(pesoTextField.text!) ?? 0
            let masa = (Double(pesoIngresado)/9.81)
            let pesoLuna = (Double(masa)*1.62) * 2.205
            pesoRealLunaLabel.text = "\(String(format:"%.2f", pesoLuna)) lb"
            let pesoMercurio = ((Double(masa)) * 3.7) * 2.205
            pesoRealMercurioLabel.text = "\(String(format:"%.2f", pesoMercurio)) lb"
            let pesoVenus = ((Double(masa))*8.87) * 2.205
            pesoRealVenusLabel.text = "\(String(format:"%.2f", pesoVenus)) lb"
            let pesoMarte = ((Double(masa))*3.7) * 2.205
            pesoRealMarteLabel.text = "\(String(format:"%.2f", pesoMarte)) lb"
            let pesoJupiter = (Double(masa))*24.79 * 2.205
            pesoRealJupiterLabel.text = "\(String(format:"%.2f", pesoJupiter)) lb"
            let pesoSaturno = (Double(masa))*10.44 * 2.205
            pesoRealSaturnoLabel.text = "\(String(format:"%.2f", pesoSaturno)) lb"
            let pesoUrano = (Double(masa))*8.87 * 2.205
            pesoRealUranoLabel.text = "\(String(format:"%.2f", pesoUrano)) lb"
            let pesoNeptuno = (Double(masa))*11.15 * 2.205
            pesoRealNeptunoLabel.text = "\(String(format:"%.2f", pesoNeptuno)) lb"
            let pesoPluton = (Double(masa))*0.62 * 2.205
            pesoRealPlutonLabel.text = "\(String(format:"%.2f", pesoPluton)) lb"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        pesoTextField.resignFirstResponder()
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
extension PesoViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
