//
//  NoteButton.swift
//  Xylophone
//
//  Created by Tomas Sanni on 6/17/24.
//

import UIKit
import AVFoundation

class NoteButton: UIButton {
    var player: AVAudioPlayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        configure()
    }
    
    @objc func handleButton() {
        print("Note:", titleLabel?.text ?? "A")
        let url = Bundle.main.url(forResource: titleLabel?.text, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 110)
        ])
    }
    
//    func set(backgroundColor: UIColor, title: String) {
//        self.backgroundColor = backgroundColor
//        setTitle(title, for: .normal)
//    }
    
}
