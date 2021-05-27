//
//  Rodas.swift
//  LockLine
//
//  Created by Lucas Claro on 25/05/21.
//

import SpriteKit

extension GameScene {
    
    //MARK: DrawFechado
    func DrawRodasFechado() {
        
        let roda1 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[0])")
        roda1.position = PosProporcional(pos: CGPoint(x: -58, y: 11))
        roda1.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda1.zPosition = 10
        roda1.name = "Cofre"
        
        let rodaFuro1 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro1.position = PosProporcional(pos: CGPoint(x: -58, y: 11))
        rodaFuro1.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro1.zPosition = 11
        rodaFuro1.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro1.name = "Cofre"
        
        
        let apertado1 = SKSpriteNode()
        apertado1.color = UIColor(named: "Papiro") ?? UIColor.black
        apertado1.size = SizeProporcional(size: CGSize(width: 80, height: 80))
        apertado1.position = PosProporcional(pos: CGPoint(x: -58, y: 11))
        apertado1.zPosition = 9
        apertado1.name = "Cofre"
        
        let roda2 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[1])")
        roda2.position = PosProporcional(pos: CGPoint(x: 53, y: 11))
        roda2.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda2.zPosition = 10
        roda2.name = "Cofre"
        
        let rodaFuro2 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro2.position = PosProporcional(pos: CGPoint(x: 53, y: 11))
        rodaFuro2.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro2.zPosition = 11
        rodaFuro2.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro2.name = "Cofre"
        
        let roda3 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[2])")
        roda3.position = PosProporcional(pos: CGPoint(x: -58, y: -82))
        roda3.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda3.zPosition = 10
        roda3.name = "Cofre"
        
        let rodaFuro3 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro3.position = PosProporcional(pos: CGPoint(x: -58, y: -82))
        rodaFuro3.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro3.zPosition = 11
        rodaFuro3.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro3.name = "Cofre"
        
        let roda4 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[3])")
        roda4.position = PosProporcional(pos: CGPoint(x: 53, y: -82))
        roda4.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda4.zPosition = 10
        roda4.name = "Cofre"
        
        let rodaFuro4 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro4.position = PosProporcional(pos: CGPoint(x: 53, y: -82))
        rodaFuro4.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro4.zPosition = 11
        rodaFuro4.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro4.name = "Cofre"
        
        self.addChild(roda1)
        self.addChild(rodaFuro1)
        self.addChild(apertado1)
        self.addChild(roda2)
        self.addChild(rodaFuro2)
        self.addChild(roda3)
        self.addChild(rodaFuro3)
        self.addChild(roda4)
        self.addChild(rodaFuro4)
            
    }
        
    //MARK: DrawAberto
    func DrawRodasAberto() {
        
        let roda1 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[0])")
        roda1.position = PosProporcional(pos: CGPoint(x: -92, y: 18))
        roda1.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda1.zPosition = 10
        roda1.name = "Roda1"
        
        let rodaFuro1 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro1.position = PosProporcional(pos: CGPoint(x: -92, y: 18))
        rodaFuro1.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro1.zPosition = 11
        rodaFuro1.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro1.name = "Roda1"
        
        let roda2 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[1])")
        roda2.position = PosProporcional(pos: CGPoint(x: 85, y: 18))
        roda2.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda2.zPosition = 10
        roda2.name = "Roda2"
        
        let rodaFuro2 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro2.position = PosProporcional(pos: CGPoint(x: 85, y: 18))
        rodaFuro2.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro2.zPosition = 11
        rodaFuro2.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro2.name = "Roda2"
        
        let roda3 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[2])")
        roda3.position = PosProporcional(pos: CGPoint(x: -92, y: -132))
        roda3.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda3.zPosition = 10
        roda3.name = "Roda3"
        
        let rodaFuro3 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro3.position = PosProporcional(pos: CGPoint(x: -92, y: -132))
        rodaFuro3.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro3.zPosition = 11
        rodaFuro3.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro3.name = "Roda3"
        
        let roda4 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[3])")
        roda4.position = PosProporcional(pos: CGPoint(x: 85, y: -132))
        roda4.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda4.zPosition = 10
        roda4.name = "Roda4"
        
        let rodaFuro4 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro4.position = PosProporcional(pos: CGPoint(x: 85, y: -132))
        rodaFuro4.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro4.zPosition = 11
        rodaFuro4.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro4.name = "Roda4"
        
        self.addChild(roda1)
        self.addChild(rodaFuro1)
        self.addChild(roda2)
        self.addChild(rodaFuro2)
        self.addChild(roda3)
        self.addChild(rodaFuro3)
        self.addChild(roda4)
        self.addChild(rodaFuro4)
        
    }
    
    //MARK: Touched
    func TouchedRodas(pos : CGPoint) {
        
    }
    
    //MARK: Update
    func UpdateRodas() {
        navegação.Rodas.angulo += 2
        atualizarTela()
    }
    
}

struct RodasController {
    
    init() {
        let rodasSorteadas = SortearRodas()
        rodas = rodasSorteadas
    }
    
    var angulo = 0
    var input = [Int]()
    var rodas : [Int]
}

fileprivate func SortearRodas() -> [Int] {
    let vetor = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    var rodas = [Int]()
    
    while rodas.count < 4 {
        let random = vetor.randomElement()!
        
        if !rodas.contains(random) {
            rodas.append(random)
        }
    }
    
    return rodas
    
}
