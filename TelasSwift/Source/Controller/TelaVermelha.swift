//
//  TelaVermelha.swift
//  TelasSwift
//
//  Created by IFBIOTIC16 on 03/07/23.
//

import Foundation
import UIKit
class TelaVermelhaViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let goToBlueButton = UIButton(type: .system)
        goToBlueButton.setTitle("Ir para tela azul", for: .normal)
        goToBlueButton.addTarget(self, action: #selector(goToBlueScreen), for: .touchUpInside)
        goToBlueButton.translatesAutoresizingMaskIntoConstraints = false
        
        let goToGreenButton = UIButton(type: .system)
        goToGreenButton.setTitle("Voltar para tela verde", for: .normal)
        goToGreenButton.addTarget(self, action: #selector(goToGreenScreen), for: .touchUpInside)
        goToGreenButton.translatesAutoresizingMaskIntoConstraints = false
        
        let stackView = UIStackView(arrangedSubviews: [goToBlueButton, goToGreenButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalToConstant: 374),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc func goToGreenScreen() {
        let TelaVerdeViewController = TelaVerdeViewController()
        navigationController?.pushViewController(TelaVerdeViewController, animated: true)
    }
    @objc func goToBlueScreen() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}
