//
//  AnotherVC.swift
//  DependencyInjection
//
//  Created by Burak Afyonlu on 3.05.2023.
//

import UIKit

class AnotherVC: UIViewController {
    
    private let providerProtocol : backgroundProviderProtocol?

    
    init(providerProtocol: backgroundProviderProtocol?) {
        self.providerProtocol = providerProtocol
         
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = providerProtocol?.backgroundColor ?? .white
        
    }
    


}
