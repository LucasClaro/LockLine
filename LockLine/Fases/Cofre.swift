//
//  Cofre.swift
//  LockLine
//
//  Created by Sayuri Hioki on 22/07/21.
//

import SpriteKit

extension GameScene{
    
    func DrawCofreFechado(){
        let simb1 =  SKSpriteNode(imageNamed: "tecla\(navegação.Cofre.input[0])")
        simb1.size = SizeProporcional(size: CGSize(width: 10, height: 10))
        simb1.position = PosProporcional(pos:CGPoint(x: -35, y: 32.5))
        simb1.zPosition = 11
        
        let simb2 =  SKSpriteNode(imageNamed: "tecla\(navegação.Cofre.input[1])")
        simb2.size = SizeProporcional(size: CGSize(width: 10, height: 10))
        simb2.position = PosProporcional(pos:CGPoint(x: 0, y: 32.5))
        simb2.zPosition = 11
        
        let simb3 =  SKSpriteNode(imageNamed: "tecla\(navegação.Cofre.input[2])")
        simb3.size = SizeProporcional(size: CGSize(width: 10, height: 10))
        simb3.position = PosProporcional(pos:CGPoint(x: 35, y: 32.5))
        simb3.zPosition = 11
        
        self.addChild(simb1)
        self.addChild(simb2)
        self.addChild(simb3)
        
        let luz1 = SKSpriteNode(imageNamed: navegação.Cofre.ordemLuzes[0])
        luz1.size = SizeProporcional(size: CGSize(width: 30, height: 8.5))
        luz1.position = PosProporcional(pos: CGPoint(x: -38, y: 17.2))
        luz1.zPosition = 10
        self.addChild(luz1)
        
        let luz2 = SKSpriteNode(imageNamed: navegação.Cofre.ordemLuzes[1])
        luz2.size = SizeProporcional(size: CGSize(width: 30, height: 8.5))
        luz2.position = PosProporcional(pos: CGPoint(x: -1.5, y: 17.2))
        luz2.zPosition = 10
        self.addChild(luz2)
        
        let luz3 = SKSpriteNode(imageNamed: navegação.Cofre.ordemLuzes[2])
        luz3.size = SizeProporcional(size: CGSize(width: 30, height: 8.5))
        luz3.position = PosProporcional(pos: CGPoint(x: 35, y: 17.2))
        luz3.zPosition = 10
        self.addChild(luz3)
    }
    
    func DrawCofreAberto(){
        
        let simb1 =  SKSpriteNode(imageNamed: "tecla\(navegação.Cofre.input[0])")
        simb1.size = SizeProporcional(size: CGSize(width: 18, height: 18))
        simb1.position = PosProporcional(pos:CGPoint(x: -55, y: 51.8))
        simb1.zPosition = 11
        
        let simb2 =  SKSpriteNode(imageNamed: "tecla\(navegação.Cofre.input[1])")
        simb2.size = SizeProporcional(size: CGSize(width: 18, height: 18))
        simb2.position = PosProporcional(pos:CGPoint(x: 0, y: 51.8))
        simb2.zPosition = 11
        
        let simb3 =  SKSpriteNode(imageNamed: "tecla\(navegação.Cofre.input[2])")
        simb3.size = SizeProporcional(size: CGSize(width: 18, height: 18))
        simb3.position = PosProporcional(pos:CGPoint(x: 55, y: 51.8))
        simb3.zPosition = 11
        
        self.addChild(simb1)
        self.addChild(simb2)
        self.addChild(simb3)
        
        let luz1 = SKSpriteNode(imageNamed: navegação.Cofre.ordemLuzes[0])
        luz1.size = SizeProporcional(size: CGSize(width: 51, height: 14))
        luz1.position = PosProporcional(pos: CGPoint(x: -60, y: 26))
        luz1.zPosition = 10
        self.addChild(luz1)
        
        let luz2 = SKSpriteNode(imageNamed: navegação.Cofre.ordemLuzes[1])
        luz2.size = SizeProporcional(size: CGSize(width: 51, height: 14))
        luz2.position = PosProporcional(pos: CGPoint(x: -2, y: 26))
        luz2.zPosition = 10
        self.addChild(luz2)
        
        let luz3 = SKSpriteNode(imageNamed: navegação.Cofre.ordemLuzes[2])
        luz3.size = SizeProporcional(size: CGSize(width: 51, height: 14))
        luz3.position = PosProporcional(pos: CGPoint(x: 55, y: 26))
        luz3.zPosition = 10
        self.addChild(luz3)
        
        let tecla1 = SKSpriteNode()
        tecla1.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla1.position = PosProporcional(pos: CGPoint(x: -59, y: -10))
        tecla1.zPosition = 10
        tecla1.name = "Tecla1"
        
        let tecla2 = SKSpriteNode()
        tecla2.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla2.position = PosProporcional(pos: CGPoint(x: -2, y: -10))
        tecla2.zPosition = 10
        tecla2.name = "Tecla2"
        
        let tecla3 = SKSpriteNode()
        tecla3.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla3.position = PosProporcional(pos: CGPoint(x: 55, y: -10))
        tecla3.zPosition = 10
        tecla3.name = "Tecla3"
        
        let tecla4 = SKSpriteNode()
        tecla4.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla4.position = PosProporcional(pos: CGPoint(x: -59, y: -49))
        tecla4.zPosition = 10
        tecla4.name = "Tecla4"
        
        let tecla5 = SKSpriteNode()
        tecla5.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla5.position = PosProporcional(pos: CGPoint(x: -2, y: -49))
        tecla5.zPosition = 10
        tecla5.name = "Tecla5"
        
        let tecla6 = SKSpriteNode()
        tecla6.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla6.position = PosProporcional(pos: CGPoint(x: 55, y: -49))
        tecla6.zPosition = 10
        tecla6.name = "Tecla6"
        
        let tecla7 = SKSpriteNode()
        tecla7.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla7.position = PosProporcional(pos: CGPoint(x: -59, y: -87.5))
        tecla7.zPosition = 10
        tecla7.name = "Tecla7"
        
        let tecla8 = SKSpriteNode()
        tecla8.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla8.position = PosProporcional(pos: CGPoint(x: -2, y: -87.5))
        tecla8.zPosition = 10
        tecla8.name = "Tecla8"
        
        let tecla9 = SKSpriteNode()
        tecla9.size = SizeProporcional(size: CGSize(width: 50, height: 31))
        tecla9.position = PosProporcional(pos: CGPoint(x: 55, y: -87.5))
        tecla9.zPosition = 10
        tecla9.name = "Tecla9"
        
        let abrir = SKSpriteNode()
        abrir.size = SizeProporcional(size: CGSize(width: 166, height: 29.6))
        abrir.position = PosProporcional(pos: CGPoint(x: -2, y: -125.1))
        abrir.zPosition = 10
        abrir.name = "Abrir"
        
        self.addChild(tecla1)
        self.addChild(tecla2)
        self.addChild(tecla3)
        self.addChild(tecla4)
        self.addChild(tecla5)
        self.addChild(tecla6)
        self.addChild(tecla7)
        self.addChild(tecla8)
        self.addChild(tecla9)
        self.addChild(abrir)
    }
    
    func TouchedCofre(pos : CGPoint){
        audios["clickMaleta"]?.volume = 2
        if !navegação.ModulosCompletos[navegação.ModuloOlhando]{
            switch atPoint(pos).name {
            case "Tecla1":
                verificaInput(x: 1)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla2":
                verificaInput(x: 2)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla3":
                verificaInput(x: 3)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla4":
                verificaInput(x: 4)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla5":
                verificaInput(x: 5)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla6":
                verificaInput(x: 6)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla7":
                verificaInput(x: 7)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla8":
                verificaInput(x: 8)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Tecla9":
                verificaInput(x: 9)
                audios["clickMaleta"]?.play()
                atualizarTela()
            case "Abrir":
                audios["clickMaleta"]?.play()
                verificaResposta()
                atualizarTela()
            default:
                break
            }
            
        }
    }
    
    func verificaInput(x : Int){
        for n in 0...2{
            if navegação.Cofre.input[n] == 0 {
                navegação.Cofre.input[n] = x
                break
            }
        }
    }
    
    func verificaResposta(){
        if navegação.Cofre.input == navegação.Cofre.resposta{
            navegação.ModulosCompletos[navegação.ModuloOlhando] = true
            navegação.Cofre.ordemLuzes = ["Green", "Green", "Green"]
        }
        else{
            navegação.Cofre.input = [0,0,0]
            vibrateHeavy()
        }
    }
    
}

func sortearOrdem() -> [String] {
    var luzes = [String]()

    while luzes.count < 3 {
        let n = ["Yellow", "Blue", "Red"].randomElement()!
        if luzes.firstIndex(of: n) == nil {
            luzes.append(n)
        }
    }
    
    return luzes
}

struct CofreController {
    let luzes = [1: "Yellow", 2: "Red", 3: "Blue"]
    var ordemLuzes: [String] = []
    var resposta: [Int] = [1,2,3]
    var input: [Int] = [0,0,0]
    
    init(){
        ordemLuzes = sortearOrdem()
        
        switch ordemLuzes[0]{
        case "Yellow":
            resposta[0] = 9
        case "Blue":
            resposta[0] = 5
        case "Red":
            resposta[0] = 3
        default:
            break
        }
        
        switch ordemLuzes[1]{
        case "Yellow":
            resposta[1] = 1
        case "Blue":
            resposta[1] = 2
        case "Red":
            resposta[1] = 1
        default:
            break
        }
        
        switch ordemLuzes[2]{
        case "Yellow":
            resposta[2] = 4
        case "Blue":
            resposta[2] = 5
        case "Red":
            resposta[2] = 3
        default:
            break
        }
    }
}
