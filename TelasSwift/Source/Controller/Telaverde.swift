//
//  Telaverde.swift
//  TelasSwift
//
//  Created by IFBIOTIC16 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        
        let goToBlueButton = UIButton(type: .system)
        goToBlueButton.setTitle("Ir para tela azul", for: .normal)
        goToBlueButton.addTarget(self, action: #selector(goToBlueScreen), for: .touchUpInside)
        goToBlueButton.translatesAutoresizingMaskIntoConstraints = false
        
        let goToRedButton = UIButton(type: .system)
        goToRedButton.setTitle("Ir para tela vermelha", for: .normal)
        goToRedButton.addTarget(self, action: #selector(goToRedScreen), for: .touchUpInside)
        goToRedButton.translatesAutoresizingMaskIntoConstraints = false
        
        let subView = UIStackView(arrangedSubviews: [goToBlueButton, goToRedButton])
        subView.axis = .vertical
        subView.spacing = 20
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(subView)
        NSLayoutConstraint.activate([

            subView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func goToBlueScreen() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func goToRedScreen() {
        let TelaVermelhaViewController = TelaVermelhaViewController()
        navigationController?.pushViewController(TelaVermelhaViewController, animated: true)
    }
}
