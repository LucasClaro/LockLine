//
//  LabirintoScene.swift
//  LockLine
//
//  Created by Lucas Claro on 19/05/21.
//

import SpriteKit

extension GameScene {
    
    func DrawLabirinto() {
        let seta = SKTexture(imageNamed: "Seta")
        let btn = SKSpriteNode(color: UIColor.black, size: CGSize(width: 250, height: 250))
        btn.position = CGPoint(x: 0, y: 0)
        btn.name = "Botao"
        
        let nodeFinal = SKSpriteNode(color: UIColor.black, size: CGSize(width: 37, height: 37))
        nodeFinal.position = CGPoint(x: 130, y: 77)
        nodeFinal.zPosition = CGFloat(10)
        nodeFinal.zRotation = CGFloat(Double.pi/4)
        nodeFinal.name = "nodeFinal"
        
//        let nodeStart = SKSpriteNode(color: UIColor.black, size: CGSize(width: 37, height: 37))
        let nodeStart = SKShapeNode(circleOfRadius: 18.5)
        nodeStart.fillColor = UIColor(red: 1, green: 0.94, blue: 0.84, alpha: 1)
        nodeStart.strokeColor = .black
        nodeStart.position = CGPoint(x: -131, y: -181)
        nodeStart.zPosition = CGFloat(10)
        nodeStart.name = "nodeStart"
        
        
//        let shape: SKShapeNode = SKShapeNode(circleOfRadius: 50)
//        shape.name = "shape"
//        shape.lineWidth = 1 // this way we see that this is a circle
//        shape.fillColor = .white // to see the true colors of our image
//        //shape.strokeColor = .white
//        //shape.glowWidth = 0
//        shape.fillTexture = SKTexture(imageNamed:"myImage")
//        shape.position = CGPoint(x: 0, y:200)
//
        
        let arrowUp = SKSpriteNode(texture: seta, size: CGSize(width: 75, height: 37))
        arrowUp.zRotation = CGFloat(Double.pi)
        arrowUp.position = CGPoint(x: 0, y: 100)
        arrowUp.zPosition = CGFloat(10)
        arrowUp.name = "arrowUp"
        
        let arrowDown = SKSpriteNode(texture: seta, size: CGSize(width: 75, height: 37))
        arrowDown.zRotation = 0
        arrowDown.zPosition = CGFloat(10)
        arrowDown.position = CGPoint(x: 0, y: -200)
        arrowDown.name = "arrowDown"
        
        let arrowLeft = SKSpriteNode(texture: seta, size: CGSize(width: 75, height: 37))
        arrowLeft.zRotation = CGFloat((3 * Double.pi)/2)
        arrowLeft.zPosition = CGFloat(10)
        arrowLeft.position = CGPoint(x: -150, y: -50)
        arrowLeft.name = "arrowLeft"
        
        let arrowRight = SKSpriteNode(texture: seta, size: CGSize(width: 75, height: 37))
        arrowRight.zRotation = CGFloat(Double.pi/2)
        arrowRight.zPosition = CGFloat(10)
        arrowRight.position = CGPoint(x: 150, y: -50)
        arrowRight.name = "arrowRight"
        
        if navegação.Labirinto.terminado {
            btn.color = UIColor.white
        }
        
        self.addChild(nodeStart)
        self.addChild(nodeFinal)
        self.addChild(arrowLeft)
        self.addChild(arrowRight)
        self.addChild(arrowDown)
        self.addChild(arrowUp)
        self.addChild(btn)
    }
    
    func TouchedLabirinto(pos : CGPoint) {
        
        if !navegação.Labirinto.terminado {
            switch atPoint(pos).name {
                case "Botao":
                    navegação.Labirinto.terminado = true
                    atualizarTela()
                    break
                case "arrowUp":
                    print(atPoint(pos).name)
                    atualizarTela()
                    break
                case "arrowDown":
                    print(atPoint(pos).name)
                    atualizarTela()
                    break
                case "arrowLeft":
                    print(atPoint(pos).name)
                    atualizarTela()
                    break
                case "arrowRight":
                    print(atPoint(pos).name)
                    atualizarTela()
                    break
                default:
                    break
            }
        }
        
    }
}

struct LabirintoControler {
    var terminado : Bool = false
}
