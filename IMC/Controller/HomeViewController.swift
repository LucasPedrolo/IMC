//
//  HomeViewController.swift
//  IMC
//
//  Created by unicred on 25/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView = HomeView()
    var viewModel = HomeViewModel()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.calculateButton.addTarget(self, action: #selector(calcImc), for: .touchUpInside)
    }
    
    @objc func calcImc() {
        let result = viewModel.calc(weight: Float(homeView.weightTxtField.text ?? "") ?? 0, height: Float(homeView.heightTxtField.text ?? "") ?? 0)
        
        if result.isNaN {
            homeView.resultLabel.text = "Seu IMC é: Error NaN"
        } else if result.isInfinite {
            homeView.resultLabel.text = "Seu IMC é: Error Infinite"
        } else {
            homeView.resultLabel.text = "Seu IMC é: \(result)"
        }
    }
}
