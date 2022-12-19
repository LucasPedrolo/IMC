//
//  ViewController.swift
//  IMC
//
//  Created by unicred on 06/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var altura: UITextField!
    
    
    var pesoConversao: Float?
    var alturaConversao: Float?
    var calcularConversao: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculo(){
        pesoConversao = Float(peso.text ?? "")
        alturaConversao = Float(altura.text ?? "")
        
        calcularConversao = pesoConversao! / (alturaConversao! * alturaConversao!)
        
        resultado.text = "Seu IMC é: \(calcularConversao!)"
    }
    
    
    
    
    @IBAction func buttonC(_ sender: Any) {
        calculo()
    }
}
    
