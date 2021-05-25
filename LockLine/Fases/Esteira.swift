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
        
        //PLACAS
        if navegação.Esteira.placasCores[0] == "azul" {
            let placaEsquerda = SKSpriteNode(imageNamed: "azul")
            placaEsquerda.size = CGSize(width: 130, height: 93)
            placaEsquerda.position = PosProporcional(pos: CGPoint(x: -80, y: 65))
            placaEsquerda.zPosition = 10
            
            self.addChild(placaEsquerda)
            
            if navegação.Esteira.placasCores[1] == "vermelho" {
                let placaDireita = SKSpriteNode(imageNamed: "vermelho")
                placaDireita.size = CGSize(width: 130, height: 93)
                placaDireita.position = PosProporcional(pos: CGPoint(x: 82, y: 65))
                placaDireita.zPosition = 10
                
                self.addChild(placaDireita)
            } else{
                let placaDireita = SKSpriteNode(imageNamed: "verde")
                placaDireita.size = CGSize(width: 130, height: 93)
                placaDireita.position = PosProporcional(pos: CGPoint(x: 82, y: 65))
                placaDireita.zPosition = 10
                
                self.addChild(placaDireita)
            }
        } else if navegação.Esteira.placasCores[0] == "verde" {
            let placaEsquerda = SKSpriteNode(imageNamed: "verde")
            placaEsquerda.size = CGSize(width: 130, height: 93)
            placaEsquerda.position = PosProporcional(pos: CGPoint(x: -80, y: 65))
            placaEsquerda.zPosition = 10
            
            let placaDireita = SKSpriteNode(imageNamed: "vermelho")
            placaDireita.size = CGSize(width: 130, height: 93)
            placaDireita.position = PosProporcional(pos: CGPoint(x: 82, y: 65))
            placaDireita.zPosition = 10
            
            self.addChild(placaEsquerda)
            self.addChild(placaDireita)
        }
        
        let simbolo = SKSpriteNode(imageNamed: navegação.Esteira.simbolo)
        simbolo.size = CGSize(width: 49, height: 160)
        simbolo.position = PosProporcional(pos: CGPoint(x: 0, y: 30))
        simbolo.zPosition = 10
        
        self.addChild(simbolo)
        
        //CUBOS
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
        
        let cubo4 = SKSpriteNode(imageNamed: "cubolanterna")
        cubo4.size = CGSize(width: 39, height: 45)
        cubo4.position = PosProporcional(pos:CGPoint(x: 75, y: -161))
        cubo4.zPosition = 10
        
        let cubo5 = SKSpriteNode(imageNamed: "cubonuvem")
        cubo5.size = CGSize(width: 39, height: 45)
        cubo5.position = PosProporcional(pos:CGPoint(x: 135, y: -161))
        cubo5.zPosition = 10
        
        self.addChild(cubo1)
        self.addChild(cubo2)
        self.addChild(cubo3)
        self.addChild(cubo4)
        self.addChild(cubo5)
    }
    
    func TouchedEsteira(pos : CGPoint) {
        
    }
    
}


//MARK: struct EsteiraController
struct EsteiraController {
    var ordemEsteira: [Int] = []
    var placasCores: [String] = []
    var simbolo: String = ""
    
    init(){
        let placas = [1,2,3].randomElement()!
        let simb = [1,2,3].randomElement()!
        
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
        
        switch simb{
            case 1:
                simbolo = "symbolast"
            case 2:
                simbolo = "symbolestrela"
            case 3:
                simbolo = "symbolquadrado"
            default:
                simbolo = "symbolast"
        }
    }
    
}


