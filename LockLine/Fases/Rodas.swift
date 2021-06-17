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
        
        let apertado1 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado1.position = PosProporcional(pos: CGPoint(x: -58, y: 11))
        apertado1.size = SizeProporcional(size: CGSize(width: 85, height: 85))
        apertado1.zPosition = 9
        apertado1.name = "Cofre"
        
        let roda2 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[1])")
        roda2.position = PosProporcional(pos: CGPoint(x: 57, y: 11))
        roda2.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda2.zPosition = 10
        roda2.name = "Cofre"
        
        let rodaFuro2 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro2.position = PosProporcional(pos: CGPoint(x: 57, y: 11))
        rodaFuro2.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro2.zPosition = 11
        rodaFuro2.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro2.name = "Cofre"
        
        let apertado2 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado2.position = PosProporcional(pos: CGPoint(x: 57, y: 11))
        apertado2.size = SizeProporcional(size: CGSize(width: 85, height: 85))
        apertado2.zPosition = 9
        apertado2.name = "Cofre"
        
        let roda3 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[2])")
        roda3.position = PosProporcional(pos: CGPoint(x: -58, y: -86))
        roda3.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda3.zPosition = 10
        roda3.name = "Cofre"
        
        let rodaFuro3 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro3.position = PosProporcional(pos: CGPoint(x: -58, y: -86))
        rodaFuro3.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro3.zPosition = 11
        rodaFuro3.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro3.name = "Cofre"
        
        let apertado3 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado3.position = PosProporcional(pos: CGPoint(x: -58, y: -85))
        apertado3.size = SizeProporcional(size: CGSize(width: 85, height: 85))
        apertado3.zPosition = 9
        apertado3.name = "Cofre"
        
        let roda4 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[3])")
        roda4.position = PosProporcional(pos: CGPoint(x: 57, y: -86))
        roda4.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        roda4.zPosition = 10
        roda4.name = "Cofre"
        
        let rodaFuro4 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro4.position = PosProporcional(pos: CGPoint(x: 57, y: -86))
        rodaFuro4.size = SizeProporcional(size: CGSize(width: 61, height: 61))
        rodaFuro4.zPosition = 11
        rodaFuro4.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro4.name = "Cofre"
        
        let apertado4 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado4.position = PosProporcional(pos: CGPoint(x: 57, y: -85))
        apertado4.size = SizeProporcional(size: CGSize(width: 85, height: 85))
        apertado4.zPosition = 9
        apertado4.name = "Cofre"
        
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            apertado1.texture = SKTexture(imageNamed: "ApertadoVerde")
            apertado3.texture = SKTexture(imageNamed: "ApertadoVerde")
            apertado4.texture = SKTexture(imageNamed: "ApertadoVerde")
            apertado2.texture = SKTexture(imageNamed: "ApertadoVerde")
        }
        
        self.addChild(roda1)
        self.addChild(rodaFuro1)
        if navegação.Rodas.input.contains(1) {
            self.addChild(apertado1)
        }
        self.addChild(roda2)
        self.addChild(rodaFuro2)
        if navegação.Rodas.input.contains(2) {
            self.addChild(apertado2)
        }
        self.addChild(roda3)
        self.addChild(rodaFuro3)
        if navegação.Rodas.input.contains(3) {
            self.addChild(apertado3)
        }
        self.addChild(roda4)
        self.addChild(rodaFuro4)
        if navegação.Rodas.input.contains(4) {
            self.addChild(apertado4)
        }
        
    }
        
    //MARK: DrawAberto
    func DrawRodasAberto() {
        audios["roda"]?.volume = 2
        audios["roda"]?.play()
        
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
        
        if navegação.Rodas.input.contains(1) {
            roda1.position = PosProporcional(pos: CGPoint(x: -92, y: 24))
            rodaFuro1.position = PosProporcional(pos: CGPoint(x: -92, y: 24))
        }
        
        let apertado1 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado1.position = PosProporcional(pos: CGPoint(x: -92, y: 24))
        apertado1.size = SizeProporcional(size: CGSize(width: 140, height: 140))
        apertado1.zPosition = 9
        
        let roda2 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[1])")
        roda2.position = PosProporcional(pos: CGPoint(x: 90, y: 18))
        roda2.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda2.zPosition = 10
        roda2.name = "Roda2"
        
        let rodaFuro2 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro2.position = PosProporcional(pos: CGPoint(x: 90, y: 18))
        rodaFuro2.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro2.zPosition = 11
        rodaFuro2.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro2.name = "Roda2"
        
        if navegação.Rodas.input.contains(2) {
            roda2.position = PosProporcional(pos: CGPoint(x: 90, y: 24))
            rodaFuro2.position = PosProporcional(pos: CGPoint(x: 90, y: 24))
        }
        
        let apertado2 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado2.position = PosProporcional(pos: CGPoint(x: 90, y: 24))
        apertado2.size = SizeProporcional(size: CGSize(width: 140, height: 140))
        apertado2.zPosition = 9
        
        let roda3 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[2])")
        roda3.position = PosProporcional(pos: CGPoint(x: -92, y: -138))
        roda3.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda3.zPosition = 10
        roda3.name = "Roda3"
        
        let rodaFuro3 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro3.position = PosProporcional(pos: CGPoint(x: -92, y: -138))
        rodaFuro3.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro3.zPosition = 11
        rodaFuro3.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro3.name = "Roda3"
        
        if navegação.Rodas.input.contains(3) {
            roda3.position = PosProporcional(pos: CGPoint(x: -92, y: -132))
            rodaFuro3.position = PosProporcional(pos: CGPoint(x: -92, y: -132))
        }
        
        let apertado3 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado3.position = PosProporcional(pos: CGPoint(x: -92, y: -132))
        apertado3.size = SizeProporcional(size: CGSize(width: 140, height: 140))
        apertado3.zPosition = 9
        
        let roda4 = SKSpriteNode(imageNamed: "Roda\(navegação.Rodas.rodas[3])")
        roda4.position = PosProporcional(pos: CGPoint(x: 90, y: -138))
        roda4.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        roda4.zPosition = 10
        roda4.name = "Roda4"
        
        let rodaFuro4 = SKSpriteNode(imageNamed: "RodaFuro")
        rodaFuro4.position = PosProporcional(pos: CGPoint(x: 90, y: -138))
        rodaFuro4.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        rodaFuro4.zPosition = 11
        rodaFuro4.zRotation = CGFloat(navegação.Rodas.angulo) * CGFloat.pi/180
        rodaFuro4.name = "Roda4"
        
        if navegação.Rodas.input.contains(4) {
            roda4.position = PosProporcional(pos: CGPoint(x: 90, y: -132))
            rodaFuro4.position = PosProporcional(pos: CGPoint(x: 90, y: -132))
        }
        
        let apertado4 = SKSpriteNode(imageNamed: "RodaApertada")
        apertado4.position = PosProporcional(pos: CGPoint(x: 90, y: -132))
        apertado4.size = SizeProporcional(size: CGSize(width: 140, height: 140))
        apertado4.zPosition = 9
        
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            apertado1.texture = SKTexture(imageNamed: "ApertadoVerde")
            apertado3.texture = SKTexture(imageNamed: "ApertadoVerde")
            apertado4.texture = SKTexture(imageNamed: "ApertadoVerde")
            apertado2.texture = SKTexture(imageNamed: "ApertadoVerde")
        }
        
        self.addChild(roda1)
        self.addChild(rodaFuro1)
        if navegação.Rodas.input.contains(1) {
            self.addChild(apertado1)
        }
        self.addChild(roda2)
        self.addChild(rodaFuro2)
        if navegação.Rodas.input.contains(2) {
            self.addChild(apertado2)
        }
        self.addChild(roda3)
        self.addChild(rodaFuro3)
        if navegação.Rodas.input.contains(3) {
            self.addChild(apertado3)
        }
        self.addChild(roda4)
        self.addChild(rodaFuro4)
        if navegação.Rodas.input.contains(4) {
            self.addChild(apertado4)
        }
        
    }
    
    //MARK: Touched
    func TouchedRodas(pos : CGPoint) {
        if !navegação.ModulosCompletos[navegação.ModuloOlhando] {
            switch atPoint(pos).name {
                case "Roda1":
                    if !navegação.Rodas.input.contains(1) {
                        audios["botao"]?.play()
                        navegação.Rodas.input.append(1)
                    }
                    checarSenha()
                    atualizarTela()
                case "Roda2":
                    if !navegação.Rodas.input.contains(2) {
                        audios["botao"]?.play()
                        navegação.Rodas.input.append(2)
                    }
                    checarSenha()
                    atualizarTela()
                case "Roda3":
                    if !navegação.Rodas.input.contains(3) {
                        audios["botao"]?.play()
                        navegação.Rodas.input.append(3)
                    }
                    checarSenha()
                    atualizarTela()
                case "Roda4":
                    if !navegação.Rodas.input.contains(4) {
                        audios["botao"]?.play()
                        navegação.Rodas.input.append(4)
                    }
                    checarSenha()
                    atualizarTela()
                default:
                    break
            }
        }
    }
    
    func checarSenha(){
        if navegação.Rodas.input == navegação.Rodas.senha {
            navegação.ModulosCompletos[navegação.ModuloOlhando] = true
        }
        else {
            if navegação.Rodas.input.count >= 4 {
                navegação.Rodas.input.removeAll()
            }
        }
    }
    
    //MARK: Update
    func UpdateRodas() {
        navegação.Rodas.angulo += 2
        atualizarTela()
    }
    
}

//MARK: struct RodasController
struct RodasController {
    
    init() {
        let rodasSorteadas = SortearRodas()
        rodas = rodasSorteadas
        senha = rodasSorteadas.sorted(by: >).map({ n in
            return rodasSorteadas.firstIndex(of: n)! + 1
        })
    }
    
    var angulo = 0
    var input = [0,0,0,0]
    var rodas : [Int]
    var senha : [Int]
}

//MARK: SortearRodas
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

