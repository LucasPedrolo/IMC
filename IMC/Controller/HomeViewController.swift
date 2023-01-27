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
        let result = viewModel.calc(weight: Float(homeView.weightTxtField.text ?? defString) ?? defFloat, height: Float(homeView.heightTxtField.text ?? defString) ?? defFloat)
        
        if result.isNaN {
            homeView.resultLabel.text = "Please, insert a valid number"
        } else if result.isInfinite {
            homeView.resultLabel.text = "Please, check your info"
        } else {
            homeView.resultLabel.text = "Your IMC is: \(result)"
        }
    }
}
