//
//  Esteira.swift
//  LockLine
//
//  Created by Sayuri Hioki on 21/05/21.
//

import SpriteKit
import GameplayKit

extension GameScene{
    
    //MARK: Cubo aproximado
    func DrawEsteiraAberto() {
        let cubo1 = SKSpriteNode(imageNamed: "cuboancora")
        cubo1.size = CGSize(width: 39, height: 45)
        cubo1.position = PosProporcional(pos:CGPoint(x: -100, y: -161))
        cubo1.zPosition = 10
        
        let cubo2 = SKSpriteNode(imageNamed: "cuboarvore")
        cubo2.size = CGSize(width: 39, height: 45)
        cubo2.position = PosProporcional(pos:CGPoint(x: -40, y: -161))
        cubo2.zPosition = 10
        
        let cubo3 = SKSpriteNode(imageNamed: "cuboaviao")
        cubo3.size = CGSize(width: 39, height: 45)
        cubo3.position = PosProporcional(pos:CGPoint(x: 18, y: -161))
        cubo3.zPosition = 10
        
        let cubo4 = SKSpriteNode(imageNamed: "cuboaviao")
        cubo4.size = CGSize(width: 39, height: 45)
        cubo4.position = PosProporcional(pos:CGPoint(x: 75, y: -161))
        cubo4.zPosition = 10
        
        self.addChild(cubo1)
        self.addChild(cubo2)
        self.addChild(cubo3)
        self.addChild(cubo4)

    }
    
    func TouchedEsteira(pos : CGPoint) {
        
    }
}


//MARK: struct EsteiraController
struct EsteiraController {
    var ordemEsteira: [Int] = []
    var placasCores: [String] = []
    
    init(){
        let placas = [1,2,3].randomElement()!
        
        switch placas{
        case 1:
            placasCores = ["azul", "vermelho"]
        case 2:
            placasCores = ["azul", "verde"]
        case 3:
            placasCores = ["verde", "vermelho"]
        default:
            placasCores = ["azul", "vermelho"]
        }
    }
    
}
