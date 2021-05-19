//
//  LabirintoScene.swift
//  LockLine
//
//  Created by Lucas Claro on 19/05/21.
//

import SpriteKit

extension GameScene {
    
    func DrawLabirinto() {
        let btn = SKSpriteNode(color: UIColor.black, size: CGSize(width: 250, height: 250))
        btn.position = CGPoint(x: 0, y: 0)
        btn.name = "Botao"
        
        if navegação.Labirinto.terminado {
            btn.color = UIColor.white
        }
        
        self.addChild(btn)
    }
    
    func TouchedLabirinto(pos : CGPoint) {
        
        if !navegação.Labirinto.terminado {
            switch atPoint(pos).name {
                case "Botao":
                    navegação.Labirinto.terminado = true
                    atualizarTela()
                default:
                    break
            }
        }
        
    }
}

struct LabirintoControler {
    var terminado : Bool = false
}
