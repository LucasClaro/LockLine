//
//  Menu.swift
//  LockLine
//
//  Created by Lucas Claro on 01/06/21.
//

import SpriteKit

extension GameScene {
    
    func DrawMenu() {
        audios["background"]?.volume = 0.4
        audios["background"]?.play()
        let btnJogar = SKSpriteNode(color: UIColor.orange, size: CGSize(width: 300, height: 100))
        btnJogar.position = CGPoint(x: 0, y: -190)
        btnJogar.name = "BtnJogar"
        
        let btnManual = SKSpriteNode(color: UIColor.orange, size: CGSize(width: 300, height: 100))
        btnManual.position = CGPoint(x: 0, y: -300)
        btnManual.name = "BtnManual"
        
        let labelJogar = SKLabelNode(text: "Jogar")
        labelJogar.position = CGPoint(x: 0, y: -190)
        labelJogar.fontColor = UIColor.black
        labelJogar.fontName = "Oswald-Regular"
        labelJogar.fontSize = 40
        labelJogar.zPosition = 11
        labelJogar.name = "BtnJogar"
        
        let labelManual = SKLabelNode(text: "Manual")
        labelManual.position = CGPoint(x: 0, y: -300)
        labelManual.fontColor = UIColor.black
        labelManual.fontName = "Oswald-Regular"
        labelManual.fontSize = 40
        labelManual.zPosition = 11
        labelJogar.name = "BtnManual"
        
        addChild(btnJogar)
        addChild(btnManual)
        addChild(labelJogar)
        addChild(labelManual)
        
    }
    
    func TouchMenu(pos : CGPoint) {
        switch atPoint(pos).name {
            case "BtnJogar":
                audios["botao"]?.volume = 2
                audios["botao"]?.play()
                navegação.Tela = .Jogo
            case "BtnManual":
                audios["botao"]?.volume = 2
                audios["botao"]?.play()
                navegação.Tela = .Manual
            default:
                break
        }
    }
    
}
