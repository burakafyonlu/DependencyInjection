//
//  ViewController.swift
//  DependencyInjection
//
//  Created by Burak Afyonlu on 3.05.2023.
//

import UIKit
import Swinject

class ViewController: UIViewController {

    //Swinject
    
 
    
     let container : Container = {
        
        let container = Container()
        
        container.register(backgroundProvidingClass.self) { resolver in
            
            return backgroundProvidingClass()
            
        }
        
        container.register(AnotherVC.self) { resolver in
            
            let vc = AnotherVC(providerProtocol: resolver.resolve(backgroundProvidingClass.self))
            
            return vc
            
        }
        
        
        
        return container
        
     }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .blue
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 200))
        button.setTitle("Open Another VC", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(changeVC), for: UIControl.Event.touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func changeVC() {
        
        if let viewController = container.resolve(AnotherVC.self) {
            
            present(viewController, animated: true)
            
        }
        
    }


}

