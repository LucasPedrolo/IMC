//
//  HomeView.swift
//  IMC
//
//  Created by unicred on 25/01/23.
//

import UIKit

class HomeView: BaseView {
    
    lazy var weightTxtField: UITextField = {
        let weight = UITextField()
        weight.placeholder = "Please inform your weight (Kg)"
        weight.borderStyle = UITextField.BorderStyle.roundedRect
        weight.autocorrectionType = UITextAutocorrectionType.no
        weight.keyboardType = UIKeyboardType.default
        weight.returnKeyType = UIReturnKeyType.done
        weight.clearButtonMode = UITextField.ViewMode.whileEditing
        weight.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        weight.autocapitalizationType = .none
        
        return weight
    }()
    
    lazy var heightTxtField: UITextField = {
        let height = UITextField()
        height.placeholder = "Please inform your height (m)"
        height.borderStyle = UITextField.BorderStyle.roundedRect
        height.autocorrectionType = UITextAutocorrectionType.no
        height.keyboardType = UIKeyboardType.default
        height.returnKeyType = UIReturnKeyType.done
        height.clearButtonMode = UITextField.ViewMode.whileEditing
        height.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        height.autocapitalizationType = .none
        
        return height
    }()
    
    lazy var calculateButton: UIButton = {
        let calc = UIButton(type: .custom)
        calc.setTitle("Calculate", for: .normal)
        calc.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        calc.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        calc.setTitleColor(.white, for: .normal)
        calc.layer.masksToBounds = true
        calc.layer.cornerRadius = 20
        calc.layer.borderWidth = 2
        calc.backgroundColor = .black
        
        return calc
    }()
    
    lazy var resultLabel: UILabel = {
        let resultLbl = UILabel()
        resultLbl.text = ""
        resultLbl.textColor = .black
        resultLbl.font = UIFont.systemFont(ofSize: 18)
        resultLbl.textAlignment = .center
        
        return resultLbl
    }()
    
    override func addSubviews() {
        addSubview(weightTxtField)
        addSubview(heightTxtField)
        addSubview(calculateButton)
        addSubview(resultLabel)
    }
    
    override func setConstraints() {
        weightTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top:200, left: 90, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        heightTxtField.anchor(top: weightTxtField.bottomAnchor, leading: weightTxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        calculateButton.anchor(top: heightTxtField.bottomAnchor, leading: heightTxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 150, left: 30, bottom: 0, right: 0), size: .init(width: 180, height: 60))
        
        resultLabel.anchor(top: nil, leading: calculateButton.leadingAnchor, bottom: calculateButton.topAnchor, trailing: nil, padding: .init(top: 0, left: 10, bottom: 70, right: 0), size: .init(width: 180, height: 20))
    }
}
