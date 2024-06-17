//
//  ViewController.swift
//  Xylophone
//
//  Created by Tomas Sanni on 6/17/24.
//

import UIKit

class ViewController: UIViewController {
    let CButton = NoteButton(backgroundColor: .systemRed, title: "C")
    let DButton = NoteButton(backgroundColor: .systemOrange, title: "D")
    let EButton = NoteButton(backgroundColor: .systemYellow, title: "E")
    let FButton = NoteButton(backgroundColor: .systemGreen, title: "F")
    let GButton = NoteButton(backgroundColor: .purple, title: "G")
    let AButton = NoteButton(backgroundColor: .systemBlue, title: "A")
    let BButton = NoteButton(backgroundColor: .systemPurple, title: "B")


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureButtons()
    }

    func configureButtons() {
        view.addSubview(CButton)
        view.addSubview(DButton)
        view.addSubview(EButton)
        view.addSubview(FButton)
        view.addSubview(GButton)
        view.addSubview(AButton)
        view.addSubview(BButton)


        NSLayoutConstraint.activate([
            CButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            CButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            CButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            DButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            DButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            DButton.topAnchor.constraint(equalTo: CButton.bottomAnchor, constant: 10),
            
            EButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            EButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            EButton.topAnchor.constraint(equalTo: DButton.bottomAnchor, constant: 10),
            
            FButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            FButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            FButton.topAnchor.constraint(equalTo: EButton.bottomAnchor, constant: 10),
            
            GButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            GButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            GButton.topAnchor.constraint(equalTo: FButton.bottomAnchor, constant: 10),
            
            AButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            AButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            AButton.topAnchor.constraint(equalTo: GButton.bottomAnchor, constant: 10),
            
            BButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            BButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            BButton.topAnchor.constraint(equalTo: AButton.bottomAnchor, constant: 10),
            
        ])
        
    }

}



#Preview {
    ViewController()
}
