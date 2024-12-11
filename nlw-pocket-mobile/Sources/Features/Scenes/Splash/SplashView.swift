//
//  SplashView.swift
//  nlw-pocket-mobile
//
//  Created by Davi Farias Pinheiro on 10/12/24.
//

import Foundation
import UIKit

class SplashView: UIView{
    
    override init (frame: CGRect){
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let logoImage: UIImageView = {
        
        let image = UIImageView()
        
        image.image = UIImage(named: "logoImage")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let backgroundImage: UIImageView = {
        
        let image = UIImageView()
        
        image.image = UIImage(named: "backgroundImage")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private func setupUI(){
        self.addSubview(logoImage)
        self.addSubview(backgroundImage)
    
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
