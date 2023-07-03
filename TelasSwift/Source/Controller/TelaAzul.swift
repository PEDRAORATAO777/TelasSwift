//
//  TelaAzul.swift
//  TelasSwift
//
//  Created by IFBIOTIC16 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        let goToGreenButton = UIButton(type: .system)
        goToGreenButton.setTitle("Ir para tela verde", for: .normal)
        goToGreenButton.addTarget(self, action: #selector(goToGreenScreen), for: .touchUpInside)
        goToGreenButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(goToGreenButton)
        NSLayoutConstraint.activate([
            goToGreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToGreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func goToGreenScreen() {
        let TelaVerdeViewController = TelaVerdeViewController()
        navigationController?.pushViewController(TelaVerdeViewController, animated: true)
    }
}
