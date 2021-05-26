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
            placaEsquerda.size = SizeProporcional(size: CGSize(width: 136, height: 96))
            placaEsquerda.position = PosProporcional(pos: CGPoint(x: -80, y: 65))
            placaEsquerda.zPosition = 10
            
            self.addChild(placaEsquerda)
            
            if navegação.Esteira.placasCores[1] == "vermelho" {
                let placaDireita = SKSpriteNode(imageNamed: "vermelho")
                placaDireita.size = SizeProporcional(size: CGSize(width: 136, height: 96))
                placaDireita.position = PosProporcional(pos: CGPoint(x: 82, y: 65))
                placaDireita.zPosition = 10
                
                self.addChild(placaDireita)
            } else{
                let placaDireita = SKSpriteNode(imageNamed: "verde")
                placaDireita.size = SizeProporcional(size: CGSize(width: 136, height: 96))
                placaDireita.position = PosProporcional(pos: CGPoint(x: 82, y: 65))
                placaDireita.zPosition = 10
                
                self.addChild(placaDireita)
            }
        } else if navegação.Esteira.placasCores[0] == "verde" {
            let placaEsquerda = SKSpriteNode(imageNamed: "verde")
            placaEsquerda.size = SizeProporcional(size: CGSize(width: 136, height: 96))
            placaEsquerda.position = PosProporcional(pos: CGPoint(x: -80, y: 65))
            placaEsquerda.zPosition = 10
            
            let placaDireita = SKSpriteNode(imageNamed: "vermelho")
            placaDireita.size = SizeProporcional(size: CGSize(width: 136, height: 96))
            placaDireita.position = PosProporcional(pos: CGPoint(x: 82, y: 65))
            placaDireita.zPosition = 10
            
            self.addChild(placaEsquerda)
            self.addChild(placaDireita)
        }
        
        let simbolo = SKSpriteNode(imageNamed: navegação.Esteira.simbolo)
        simbolo.size = SizeProporcional(size: CGSize(width: 51, height: 166))
        simbolo.position = PosProporcional(pos: CGPoint(x: 0, y: 30))
        simbolo.zPosition = 10
        
        self.addChild(simbolo)
        
        //CUBOS
        cuboancora.size = CGSize(width: 39, height: 45)
        cuboancora.position = PosProporcional(pos:CGPoint(x: -100, y: -161))
        cuboancora.zPosition = 10
        cuboancora.name = "Ancora"
        
        cuboarvore.size = CGSize(width: 39, height: 45)
        cuboarvore.position = PosProporcional(pos:CGPoint(x: -40, y: -161))
        cuboarvore.zPosition = 10
        cuboarvore.name = "Arvore"
        
        cuboaviao.size = CGSize(width: 39, height: 45)
        cuboaviao.position = PosProporcional(pos:CGPoint(x: 18, y: -161))
        cuboaviao.zPosition = 10
        cuboaviao.name = "Aviao"
        
        cubolanterna.size = CGSize(width: 39, height: 45)
        cubolanterna.position = PosProporcional(pos:CGPoint(x: 75, y: -161))
        cubolanterna.zPosition = 10
        cubolanterna.name = "Lanterna"
        
        cubonuvem.size = CGSize(width: 39, height: 45)
        cubonuvem.position = PosProporcional(pos:CGPoint(x: 135, y: -161))
        cubonuvem.zPosition = 10
        cubonuvem.name = "Nuvem"
        
        self.addChild(cuboancora)
        self.addChild(cuboarvore)
        self.addChild(cuboaviao)
        self.addChild(cubolanterna)
        self.addChild(cubonuvem)
        
        
        //LACUNAS
        let lacuna1 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[0])")
        let lacuna2 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[1])")
        let lacuna3 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[2])")
        let lacuna4 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[3])")
        let lacuna5 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[4])")
        let lacuna6 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[5])")
        lacuna1.size = SizeProporcional(size: CGSize(width: 31, height: 31))
        lacuna1.position = PosProporcional(pos: CGPoint(x: -118.7, y: 54))
        lacuna1.zPosition = 11
        lacuna1.name = "L1"
        
        lacuna2.size = SizeProporcional(size: CGSize(width: 31, height: 31))
        lacuna2.position = PosProporcional(pos: CGPoint(x: -79.75, y: 54))
        lacuna2.zPosition = 11
        lacuna2.name = "L2"
        
        lacuna3.size = SizeProporcional(size: CGSize(width: 31, height: 31))
        lacuna3.position = PosProporcional(pos: CGPoint(x: -40.7, y: 54))
        lacuna3.zPosition = 11
        lacuna3.name = "L3"
        
        lacuna4.size = SizeProporcional(size: CGSize(width: 31, height: 31))
        lacuna4.position = PosProporcional(pos: CGPoint(x: 43.3, y: 54))
        lacuna4.zPosition = 11
        lacuna4.name = "L4"
        
        lacuna5.size = SizeProporcional(size: CGSize(width: 31, height: 31))
        lacuna5.position = PosProporcional(pos: CGPoint(x: 82.25, y: 54))
        lacuna5.zPosition = 11
        lacuna5.name = "L5"
        
        lacuna6.size = SizeProporcional(size: CGSize(width: 31, height: 31))
        lacuna6.position = PosProporcional(pos: CGPoint(x: 121.25, y: 54))
        lacuna6.zPosition = 11
        lacuna6.name = "L6"
        
        self.addChild(lacuna1)
        self.addChild(lacuna2)
        self.addChild(lacuna3)
        self.addChild(lacuna4)
        self.addChild(lacuna5)
        self.addChild(lacuna6)
    }
    
    func TouchedEsteira(pos : CGPoint){
        if !navegação.ModulosCompletos[navegação.ModuloOlhando]{
            switch atPoint(pos).name{
            //Toque em cubos
                case "Ancora":
                    cuboancora.isHidden = true
                    verificaPos(simb: 1)
                    atualizarTela()
                case "Arvore":
                    cuboarvore.isHidden = true
                    verificaPos(simb: 2)
                    atualizarTela()
                case "Aviao":
                    cuboaviao.isHidden = true
                    verificaPos(simb: 3)
                    atualizarTela()
                case "Lanterna":
                    cubolanterna.isHidden = true
                    verificaPos(simb: 4)
                    atualizarTela()
                case "Nuvem":
                    cubonuvem.isHidden = true
                    verificaPos(simb: 5)
                    atualizarTela()
                case "Papel":
                    cubopapel.isHidden = true
                    verificaPos(simb: 6)
                    atualizarTela()
                case "Pincel":
                    cubopincel.isHidden = true
                    verificaPos(simb: 7)
                    atualizarTela()
                case "Ponteiro":
                    cuboponteiro.isHidden = true
                    verificaPos(simb: 8)
                    atualizarTela()
            //Toque em lacunas
                case "L1":
                    cubos[navegação.Esteira.input[0]]?.isHidden = false
                    navegação.Esteira.input[0] = 0
                    atualizarTela()
                case "L2":
                    cubos[navegação.Esteira.input[1]]?.isHidden = false
                    navegação.Esteira.input[1] = 0
                    atualizarTela()
                case "L3":
                    cubos[navegação.Esteira.input[2]]?.isHidden = false
                    navegação.Esteira.input[2] = 0
                    atualizarTela()
                case "L4":
                    cubos[navegação.Esteira.input[3]]?.isHidden = false
                    navegação.Esteira.input[3] = 0
                    atualizarTela()
                case "L5":
                    cubos[navegação.Esteira.input[4]]?.isHidden = false
                    navegação.Esteira.input[4] = 0
                    atualizarTela()
                case "L6":
                    cubos[navegação.Esteira.input[5]]?.isHidden = false
                    navegação.Esteira.input[5] = 0
                    atualizarTela()
                default:
                    break
            }
        }
    }
    
    func verificaPos(simb: Int){
        for n in 0...5{
            if (navegação.Esteira.input[n] == 0){
                navegação.Esteira.input[n] = simb
                break
            }
        }
    }
}

//CUBOS
fileprivate let cuboancora = SKSpriteNode(imageNamed: "cuboancora")
fileprivate let cuboarvore = SKSpriteNode(imageNamed: "cuboarvore")
fileprivate let cuboaviao = SKSpriteNode(imageNamed: "cuboaviao")
fileprivate let cubolanterna = SKSpriteNode(imageNamed: "cubolanterna")
fileprivate let cubonuvem = SKSpriteNode(imageNamed: "cubonuvem")
fileprivate let cubopapel = SKSpriteNode(imageNamed: "cubopapel")
fileprivate let cubopincel = SKSpriteNode(imageNamed: "cubopincel")
fileprivate let cuboponteiro = SKSpriteNode(imageNamed: "cuboponteiro")
fileprivate let cubos: [Int: SKSpriteNode] = [1: cuboancora, 2: cuboarvore, 3: cuboaviao, 4: cubolanterna, 5: cubonuvem, 6: cubopapel, 7: cubopincel, 8: cuboponteiro]


//MARK: struct EsteiraController
struct EsteiraController {
    var ordemEsteira: [Int] = []
    var placasCores: [String] = []
    var simbolo: String = ""
    var lacunasCertas: [Int] = []
    var input = [0,0,0,0,0,0]
    
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
                break
        }
        
        switch simb{
            case 1:
                simbolo = "symbolast"
            case 2:
                simbolo = "symbolestrela"
            case 3:
                simbolo = "symbolquadrado"
            default:
                break
        }
        
        if(simb == 1){
            if (placas == 1){
                lacunasCertas = [2,4,6,3,8,1]
            } else if(placas == 2){
                lacunasCertas = [4,8,2,6,3,7]
            } else{
                lacunasCertas = [8,7,6,2,5,4]
            }
        } else if (simb == 2){
            if (placas == 1){
                lacunasCertas = [5,6,2,1,4,8]
            } else if(placas == 2){
                lacunasCertas = [7,8,2,6,5,1]
            } else{
                lacunasCertas = [3,4,1,2,6,8]
            }
        } else{
            if (placas == 1){
                lacunasCertas = [6,4,8,2,7,1]
            } else if(placas == 2){
                lacunasCertas = [1,2,6,5,8,7]
            } else{
                lacunasCertas = [7,4,6,1,3,5]
            }
        }
    }
}



