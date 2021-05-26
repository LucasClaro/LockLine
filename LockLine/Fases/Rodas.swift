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
        
        
            
    }
        
    //MARK: DrawAberto
    func DrawRodasAberto() {
        
        let roda1 = SKSpriteNode(imageNamed: "Roda1")
        roda1.position = PosProporcional(pos: CGPoint(x: 0, y: -100))
        roda1.size = SizeProporcional(size: CGSize(width: 160, height: 160))
        roda1.zPosition = 10
        roda1.name = "Roda1"
        
        let rodaFuro1 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro1.position = PosProporcional(pos: CGPoint(x: 0, y: -100))
        rodaFuro1.size = SizeProporcional(size: CGSize(width: 160, height: 160))
        rodaFuro1.zPosition = 11
        rodaFuro1.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro1.name = "RodaFuro1"
        
        self.addChild(roda1)
        self.addChild(rodaFuro1)
        
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
