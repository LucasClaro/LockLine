//
//  Menu.swift
//  LockLine
//
//  Created by Lucas Claro on 01/06/21.
//

import SpriteKit

extension GameScene {
    
    func DrawMenu() {
//        audios["background"]?.volume = 0.4
//        audios["background"]?.play()
        
        let Fundo = SKSpriteNode(imageNamed: "Menu")
        Fundo.size = CGSize(width: frame.maxX*2, height: frame.maxY*2)
        Fundo.position = CGPoint(x: 0, y: 0)
        Fundo.zPosition = 0
        
        let btnJogar = SKSpriteNode(color: UIColor.white, size: CGSize(width: 400, height: 110))
        btnJogar.position = PosProporcional(pos: CGPoint(x: 0, y: -70))
        btnJogar.name = "BtnJogar"
        btnJogar.alpha = 0.001
        btnJogar.zPosition = 5
        
        let btnManual = SKSpriteNode(color: UIColor.white, size: CGSize(width: 400, height: 110))
        btnManual.position = PosProporcional(pos: CGPoint(x: 0, y: -190))
        btnManual.name = "BtnManual"
        btnManual.alpha = 0.001
        btnManual.zPosition = 5
        
        let versao = SKLabelNode(text: getVersion())
        versao.fontSize = 15
        versao.position = PosProporcional(pos: CGPoint(x: 140, y: -435))
        versao.zPosition = 5
        versao.fontColor = UIColor.black
        versao.fontName = "Oswald-Regular"
       
        
        addChild(versao)
        addChild(Fundo)
        addChild(btnJogar)
        addChild(btnManual)
        
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
    
    func getVersion() -> String {
        let versao = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
          
        let build = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
        
        return "Versão: \(versao)(\(build))"
    }
    
}
