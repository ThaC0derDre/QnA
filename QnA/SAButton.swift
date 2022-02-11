//
//  SAButton.swift
//  QnA
//
//  Created by Andres Gutierrez on 2/10/22.
//

import UIKit

class SAButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(title: String){
        self.init(frame: .zero)
        self.configuration?.title = title
    }
    
    private func configure() {
        configuration = .filled()
        configuration?.cornerStyle  = .capsule
        translatesAutoresizingMaskIntoConstraints   = false
    }
}
