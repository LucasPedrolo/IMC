//
//  HomeViewModel.swift
//  IMC
//
//  Created by unicred on 25/01/23.
//

import Foundation

class HomeViewModel {
    
    func calc(weight: Float, height: Float) -> Float {
        
        let result = weight / ( height * height)
        
        return result
    }
}
