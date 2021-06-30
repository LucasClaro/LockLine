//
//  Esteira.swift
//  LockLine
//
//  Created by Sayuri Hioki on 21/05/21.
//

import SpriteKit
import GameplayKit

extension GameScene{
    
    //MARK: Cubo minimizado
    func DrawEsteiraFechado(){
        
        //MOLDURA
        let moldura = SKSpriteNode(imageNamed: "moldura")
        moldura.size = SizeProporcional(size: CGSize(width: 252, height: 249.5))
        moldura.position = PosProporcional(pos: CGPoint(x: 0, y: -30.3))
        moldura.zPosition = 12
        moldura.name = "Cofre"
        
        self.addChild(moldura)
        
        //PLACAS
        if navegação.Esteira.placasCores[0] == "azul" {
            let placaEsquerda = SKSpriteNode(imageNamed: "azul")
            placaEsquerda.size = SizeProporcional(size: CGSize(width: 85.5, height: 62))
            placaEsquerda.position = PosProporcional(pos: CGPoint(x: -50, y: 39.5))
            placaEsquerda.zPosition = 10
            
            self.addChild(placaEsquerda)
            
            if navegação.Esteira.placasCores[1] == "vermelho" {
                let placaDireita = SKSpriteNode(imageNamed: "vermelho")
                placaDireita.size = SizeProporcional(size: CGSize(width: 85.5, height: 62))
                placaDireita.position = PosProporcional(pos: CGPoint(x: 51.5, y: 39.5))
                placaDireita.zPosition = 10
                
                self.addChild(placaDireita)
            } else{
                let placaDireita = SKSpriteNode(imageNamed: "verde")
                placaDireita.size = SizeProporcional(size: CGSize(width: 85.5, height: 62))
                placaDireita.position = PosProporcional(pos: CGPoint(x: 51.5, y: 39.5))
                placaDireita.zPosition = 10
                
                self.addChild(placaDireita)
            }
        } else if navegação.Esteira.placasCores[0] == "verde" {
            let placaEsquerda = SKSpriteNode(imageNamed: "verde")
            placaEsquerda.size = SizeProporcional(size: CGSize(width: 85.5, height: 62))
            placaEsquerda.position = PosProporcional(pos: CGPoint(x: -50, y: 39.5))
            placaEsquerda.zPosition = 10
            
            let placaDireita = SKSpriteNode(imageNamed: "vermelho")
            placaDireita.size = SizeProporcional(size: CGSize(width: 85.5, height: 62))
            placaDireita.position = PosProporcional(pos: CGPoint(x: 51.5, y: 39.5))
            placaDireita.zPosition = 10
            
            self.addChild(placaEsquerda)
            self.addChild(placaDireita)
        }
        
        let simbolo = SKSpriteNode(imageNamed: navegação.Esteira.simbolo)
        simbolo.size = SizeProporcional(size: CGSize(width: 32, height: 105))
        simbolo.position = PosProporcional(pos: CGPoint(x: 0, y: 18))
        simbolo.zPosition = 10
        
        self.addChild(simbolo)
        
        //LACUNAS
        let lacuna1 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[0])")
        let lacuna2 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[1])")
        let lacuna3 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[2])")
        let lacuna4 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[3])")
        let lacuna5 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[4])")
        let lacuna6 = SKSpriteNode(imageNamed: "Simbolo\(navegação.Esteira.input[5])")
        
        lacuna1.size = SizeProporcional(size: CGSize(width: 20.1, height: 20.1))
        lacuna1.position = PosProporcional(pos: CGPoint(x: -74.1, y: 32.2))
        lacuna1.zPosition = 11
        lacuna1.name = "L1"
        
        lacuna2.size = SizeProporcional(size: CGSize(width: 20.1, height: 20.1))
        lacuna2.position = PosProporcional(pos: CGPoint(x: -49.8, y: 32.2))
        lacuna2.zPosition = 11
        lacuna2.name = "L2"
        
        lacuna3.size = SizeProporcional(size: CGSize(width: 20.1, height: 20.1))
        lacuna3.position = PosProporcional(pos: CGPoint(x: -25.1, y: 32.2))
        lacuna3.zPosition = 11
        lacuna3.name = "L3"
        
        lacuna4.size = SizeProporcional(size: CGSize(width: 20.1, height: 20.1))
        lacuna4.position = PosProporcional(pos: CGPoint(x: 27, y: 32.2))
        lacuna4.zPosition = 11
        lacuna4.name = "L4"
        
        lacuna5.size = SizeProporcional(size: CGSize(width: 20.1, height: 20.1))
        lacuna5.position = PosProporcional(pos: CGPoint(x: 52, y: 32.2))
        lacuna5.zPosition = 11
        lacuna5.name = "L5"
        
        lacuna6.size = SizeProporcional(size: CGSize(width: 20.1, height: 20.1))
        lacuna6.position = PosProporcional(pos: CGPoint(x: 76, y: 32.2))
        lacuna6.zPosition = 11
        lacuna6.name = "L6"
        
        self.addChild(lacuna1)
        self.addChild(lacuna2)
        self.addChild(lacuna3)
        self.addChild(lacuna4)
        self.addChild(lacuna5)
        self.addChild(lacuna6)
        
        //CUBOS
        cubopapel.size = CGSize(width: 25, height: 29.5)
        cubopapel.position = PosProporcional(pos:CGPoint(x: -99, y: -100.5))
        cubopapel.zPosition = 10
        
        cuboancora.size = CGSize(width: 25, height: 29.5)
        cuboancora.position = PosProporcional(pos:CGPoint(x: -62, y: -100.5))
        cuboancora.zPosition = 10
        
        cuboarvore.size = CGSize(width: 25, height: 29.5)
        cuboarvore.position = PosProporcional(pos:CGPoint(x: -25, y: -100.5))
        cuboarvore.zPosition = 10
        
        cuboaviao.size = CGSize(width: 25, height: 29.5)
        cuboaviao.position = PosProporcional(pos:CGPoint(x: 11, y: -100.5))
        cuboaviao.zPosition = 10
        
        cubolanterna.size = CGSize(width: 25, height: 29.5)
        cubolanterna.position = PosProporcional(pos:CGPoint(x: 48, y: -100.5))
        cubolanterna.zPosition = 10
        
        cubonuvem.size = CGSize(width: 25, height: 29.5)
        cubonuvem.position = PosProporcional(pos:CGPoint(x: 85, y: -100.5))
        cubonuvem.zPosition = 10
        
        self.addChild(cubopapel)
        self.addChild(cuboancora)
        self.addChild(cuboarvore)
        self.addChild(cuboaviao)
        self.addChild(cubolanterna)
        self.addChild(cubonuvem)
        
        if navegação.Esteira.input == navegação.Esteira.lacunasCertas{
            simbolo.texture = SKTexture(imageNamed: "\(navegação.Esteira.simbolo)certo")
        }
    }
    
    
    //MARK: Cubo aproximado
    func DrawEsteiraAberto() {
        status()
        audios["esteira"]?.volume = 1
        audios["esteira"]?.play()
        
        //LATERAIS
        let mascaraEsquerda = SKSpriteNode(imageNamed: "mascara")
        mascaraEsquerda.size = SizeProporcional(size: CGSize(width: 30, height: 59))
        mascaraEsquerda.position = PosProporcional(pos: CGPoint(x: -200, y: -160))
        mascaraEsquerda.zPosition = 12
        self.addChild(mascaraEsquerda)
        
        let mascaraDireita = SKSpriteNode(imageNamed: "mascara")
        mascaraDireita.size = SizeProporcional(size: CGSize(width: 30, height: 59))
        mascaraDireita.position = PosProporcional(pos: CGPoint(x: 200, y: -160))
        mascaraDireita.zPosition = 12
        self.addChild(mascaraDireita)
        
        let lateralEsquerda = SKSpriteNode(imageNamed: "lateral")
        lateralEsquerda.size = SizeProporcional(size: CGSize(width: 41.2, height: 70))
        lateralEsquerda.position = PosProporcional(pos: CGPoint(x: -179.5, y: -160))
        lateralEsquerda.zPosition = 13
        self.addChild(lateralEsquerda)
        
        let lateralDireita = SKSpriteNode(imageNamed: "lateral")
        lateralDireita.size = SizeProporcional(size: CGSize(width: 38.8, height: 60))
        lateralDireita.position = PosProporcional(pos: CGPoint(x: 180.5, y: -160))
        lateralDireita.zPosition = 13
        self.addChild(lateralDireita)
        
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
        cubopincel.size = CGSize(width: 40, height: 46)
        cubopincel.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[0], y: -161))
        cubopincel.zPosition = 10
        cubopincel.name = "Pincel"
        
        cubopapel.size = CGSize(width: 40, height: 46)
        cubopapel.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[1], y: -161))
        cubopapel.zPosition = 10
        cubopapel.name = "Papel"
        
        cuboancora.size = CGSize(width: 40, height: 46)
        cuboancora.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[2], y: -161))
        cuboancora.zPosition = 10
        cuboancora.name = "Ancora"
        
        cuboarvore.size = CGSize(width: 40, height: 46)
        cuboarvore.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[3], y: -161))
        cuboarvore.zPosition = 10
        cuboarvore.name = "Arvore"
        
        cuboaviao.size = CGSize(width: 40, height: 46)
        cuboaviao.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[4], y: -161))
        cuboaviao.zPosition = 10
        cuboaviao.name = "Aviao"
        
        cubolanterna.size = CGSize(width: 40, height: 46)
        cubolanterna.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[5], y: -161))
        cubolanterna.zPosition = 10
        cubolanterna.name = "Lanterna"
        
        cubonuvem.size = CGSize(width: 40, height: 46)
        cubonuvem.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[6], y: -161))
        cubonuvem.zPosition = 10
        cubonuvem.name = "Nuvem"
        
        cuboponteiro.size = CGSize(width: 40, height: 46)
        cuboponteiro.position = PosProporcional(pos:CGPoint(x: navegação.Esteira.posCubos[7], y: -161))
        cuboponteiro.zPosition = 10
        cuboponteiro.name = "Ponteiro"
        
        self.addChild(cubopincel)
        self.addChild(cubopapel)
        self.addChild(cuboancora)
        self.addChild(cuboarvore)
        self.addChild(cuboaviao)
        self.addChild(cubolanterna)
        self.addChild(cubonuvem)
        self.addChild(cuboponteiro)
        
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
        
        if navegação.Esteira.input == navegação.Esteira.lacunasCertas{
            simbolo.texture = SKTexture(imageNamed: "\(navegação.Esteira.simbolo)certo")
        }
    }
    
    //MARK: Touch
    func TouchedEsteira(pos : CGPoint){
        if !navegação.ModulosCompletos[navegação.ModuloOlhando]{
            switch atPoint(pos).name{
            //Toque em cubos
                case "Ancora":
                    verificaPos(simb: 1, cubo: cuboancora)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Arvore":
                    verificaPos(simb: 2, cubo: cuboarvore)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Aviao":
                    verificaPos(simb: 3, cubo: cuboaviao)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Lanterna":
                    verificaPos(simb: 4, cubo: cubolanterna)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Nuvem":
                    verificaPos(simb: 5, cubo: cubonuvem)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Papel":
                    verificaPos(simb: 6, cubo: cubopapel)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Pincel":
                    verificaPos(simb: 7, cubo: cubopincel)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
                case "Ponteiro":
                    verificaPos(simb: 8, cubo: cuboponteiro)
                    audios["botao"]?.play()
                    vibrateLight()
                    atualizarTela()
            //Toque em lacunas
                case "L1":
                    cubos[navegação.Esteira.input[0]]?.isHidden = false
                    audios["botao"]?.play()
                    navegação.Esteira.input[0] = 0
                    vibrateLight()
                    atualizarTela()
                case "L2":
                    cubos[navegação.Esteira.input[1]]?.isHidden = false
                    audios["botao"]?.play()
                    navegação.Esteira.input[1] = 0
                    vibrateLight()
                    atualizarTela()
                case "L3":
                    cubos[navegação.Esteira.input[2]]?.isHidden = false
                    audios["botao"]?.play()
                    navegação.Esteira.input[2] = 0
                    vibrateLight()
                    atualizarTela()
                case "L4":
                    cubos[navegação.Esteira.input[3]]?.isHidden = false
                    audios["botao"]?.play()
                    navegação.Esteira.input[3] = 0
                    vibrateLight()
                    atualizarTela()
                case "L5":
                    cubos[navegação.Esteira.input[4]]?.isHidden = false
                    audios["botao"]?.play()
                    navegação.Esteira.input[4] = 0
                    vibrateLight()
                    atualizarTela()
                case "L6":
                    cubos[navegação.Esteira.input[5]]?.isHidden = false
                    audios["botao"]?.play()
                    navegação.Esteira.input[5] = 0
                    vibrateLight()
                    atualizarTela()
                default:
                    break
            }
        }
    }
    
    //MARK: Adicionar imagem do cubo à placa
    func verificaPos(simb: Int, cubo: SKSpriteNode){
        for n in 0...5{
            if (navegação.Esteira.input[n] == 0){
                navegação.Esteira.input[n] = simb
                cubo.isHidden = true
                break
            }
        }
    }
    
    //MARK: Verificar se o puzzle está correto
    func status(){
        if navegação.Esteira.input == navegação.Esteira.lacunasCertas{
            navegação.ModulosCompletos[navegação.ModuloOlhando] = true
        }
        else if !navegação.Esteira.input.contains(0) {
            vibrateHeavy()
        }
    }
    
    //MARK: Atualizar posição dos cubos
    func updateEsteira(){
        //min: -240  max: 227
        for n in 1...8{
            navegação.Esteira.posCubos[n-1] += 1
            cubos[n]?.position = PosProporcional(pos: CGPoint(x: navegação.Esteira.posCubos[n-1], y: -161))
            
            if (navegação.Esteira.posCubos[n-1] == 227 || navegação.Esteira.posCubos[n-1] > 227){
                navegação.Esteira.posCubos[n-1] = -240
            }
        }
        atualizarTela()
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
    var placasCores: [String] = []
    var posCubos = [-215,-157,-100,-40,18,76,135,194]
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



