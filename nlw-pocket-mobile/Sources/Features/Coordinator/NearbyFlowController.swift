//
//  NearbyFlowController.swift
//  nlw-pocket-mobile
//
//  Created by Davi Farias Pinheiro on 10/12/24.
//

import Foundation
import UIKit

class NearbyFlowController{
    private var navigationController: UINavigationController?
    
    public init(){
        
    }
    
    func start() -> UINavigationController?{
        
        let contentView = SplashView()
        
        let startViewController = SplashViewController(contentView: <#T##SplashView#>)
        
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }
}
