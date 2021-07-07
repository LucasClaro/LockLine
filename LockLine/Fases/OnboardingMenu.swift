//
//  OnboardingMenu.swift
//  LockLine
//
//  Created by Gustavo Yamauchi on 30/06/21.
//


import SpriteKit

extension GameScene {
    
    func DrawOnboardingMenu() {
//        audios["background"]?.volume = 0.4
//        audios["background"]?.play()
        
        let Fundo = SKSpriteNode(imageNamed: "Onboarding\(pag)")
        Fundo.size = CGSize(width: frame.maxX*2, height: frame.maxY*2)
        Fundo.position = CGPoint(x: 0, y: 0)
        Fundo.zPosition = 0
        
        let btnProx = SKSpriteNode(color: UIColor.white, size: CGSize(width: 32, height: 32))
        btnProx.position = PosProporcional(pos: CGPoint(x: 155, y: -199))
        btnProx.name = "BtnProx"
        btnProx.alpha = 0.001
        btnProx.zPosition = 5

        let BtnVoltar = SKSpriteNode(color: UIColor.white, size: CGSize(width: 32, height: 32))
        BtnVoltar.position = PosProporcional(pos: CGPoint(x: -155, y: -199))
        BtnVoltar.name = "BtnVoltar"
        BtnVoltar.alpha = 0.001
        BtnVoltar.zPosition = 5

       
        
        //addChild(versao)
        addChild(Fundo)
        addChild(btnProx)
        addChild(BtnVoltar)
//        addChild(btnManual)
        
    }
    
    func TouchOnboardingMenu(pos : CGPoint) {
        switch atPoint(pos).name {
            case "BtnProx":
                vibrateLight()
                audios["botao"]?.volume = 2
                audios["botao"]?.play()
                
                if pag == 1 {
                    pag += 1
                }
                else {
                    UserDefaults.standard.setValue(false, forKey: "Tutorial")
                    pag = 1
                    navegação.Tela = .Menu
                }
                //atualizarTela()
            case "BtnVoltar":
                vibrateLight()
                audios["botao"]?.volume = 2
                audios["botao"]?.play()
                if pag == 2 {
                    pag -= 1
                    //atualizarTela()
                }
            default:
                break
        }
    }
    
}

fileprivate var pag = 1
