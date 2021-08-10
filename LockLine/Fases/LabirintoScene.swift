//
//  LabirintoScene.swift
//  LockLine
//
//  Created by Lucas Claro on 19/05/21.
//

import SpriteKit

extension GameScene {
    // MARK: Draw
    
    func DrawLabirintoFechado(){
        let seta = SKTexture(imageNamed: "Seta")
        
        let nodeFinal = SKSpriteNode(color: (navegação.ModulosCompletos[navegação.ModuloOlhando] ? UIColor.green : UIColor.black), size: SizeProporcional(size: CGSize(width: 23, height: 23)))
        nodeFinal.position = PosProporcional(pos: CGPoint(x: 82, y: 47))
        nodeFinal.zPosition = CGFloat(15)
        nodeFinal.zRotation = CGFloat(Double.pi/4)
        nodeFinal.name = "Cofre"
        
        let nodeStart = SKShapeNode(circleOfRadius: 12)
        nodeStart.fillColor = UIColor(named: "Papiro") ?? UIColor.white
        nodeStart.strokeColor = .black
        nodeStart.position = PosProporcional(pos: returnPointFechado(i: navegação.Labirinto.nodeStart.i, j: navegação.Labirinto.nodeStart.j))
        nodeStart.zPosition = CGFloat(15)
        nodeStart.name = "Cofre"
        
        
        let arrowUp = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 37.5, height: 18.5)))
        arrowUp.zRotation = CGFloat(Double.pi)
        arrowUp.position = PosProporcional(pos: CGPoint(x: 0, y: 60))
        arrowUp.zPosition = CGFloat(10)
        arrowUp.name = "Cofre"
        
        let arrowDown = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 37.5, height: 18.5)))
        arrowDown.zRotation = 0
        arrowDown.zPosition = CGFloat(10)
        arrowDown.position = PosProporcional(pos: CGPoint(x: 0, y: -128))
        arrowDown.name = "Cofre"
        
        let arrowLeft = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 37.5, height: 18.5)))
        arrowLeft.zRotation = CGFloat((3 * Double.pi)/2)
        arrowLeft.zPosition = CGFloat(10)
        arrowLeft.position = PosProporcional(pos: CGPoint(x: -95, y: -35))
        arrowLeft.name = "Cofre"
        
        let arrowRight = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 37.5, height: 18.5)))
        arrowRight.zRotation = CGFloat(Double.pi/2)
        arrowRight.zPosition = CGFloat(10)
        arrowRight.position = PosProporcional(pos: CGPoint(x: 96, y: -35))
        arrowRight.name = "Cofre"
        
        if navegação.Labirinto.historico.count > 0 {
            drawLineFechado()
        }
        
        self.addChild(nodeStart)
        self.addChild(nodeFinal)
        self.addChild(arrowLeft)
        self.addChild(arrowRight)
        self.addChild(arrowDown)
        self.addChild(arrowUp)
    }
    
    func DrawLabirintoAberto() {
        let seta = SKTexture(imageNamed: "Seta")
        
        let nodeFinal = SKSpriteNode(color: (navegação.ModulosCompletos[navegação.ModuloOlhando] ? UIColor.green : UIColor.black), size: SizeProporcional(size: CGSize(width: 37, height: 37)))
        nodeFinal.position = PosProporcional(pos: CGPoint(x: 130, y: 77))
        nodeFinal.zPosition = CGFloat(15)
        nodeFinal.zRotation = CGFloat(Double.pi/4)
        nodeFinal.name = "nodeFinal"
        
        let nodeStart = SKShapeNode(circleOfRadius: 18.5)
        nodeStart.fillColor = UIColor(named: "Papiro") ?? UIColor.white
        nodeStart.strokeColor = .black
        nodeStart.position = PosProporcional(pos: returnPoint(i: navegação.Labirinto.nodeStart.i, j: navegação.Labirinto.nodeStart.j))
        nodeStart.zPosition = CGFloat(15)
        nodeStart.name = "nodeStart"
        
        let arrowUp = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 75, height: 37)))
        arrowUp.zRotation = CGFloat(Double.pi)
        arrowUp.position = PosProporcional(pos: CGPoint(x: 0, y: 100))
        arrowUp.zPosition = CGFloat(10)
        arrowUp.name = "arrowUp"
        
        let arrowDown = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 75, height: 37)))
        arrowDown.zRotation = 0
        arrowDown.zPosition = CGFloat(10)
        arrowDown.position = PosProporcional(pos: CGPoint(x: 0, y: -205))
        arrowDown.name = "arrowDown"
        
        let arrowLeft = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 75, height: 37)))
        arrowLeft.zRotation = CGFloat((3 * Double.pi)/2)
        arrowLeft.zPosition = CGFloat(10)
        arrowLeft.position = PosProporcional(pos: CGPoint(x: -155, y: -50))
        arrowLeft.name = "arrowLeft"
        
        let arrowRight = SKSpriteNode(texture: seta, size: SizeProporcional(size: CGSize(width: 75, height: 37)))
        arrowRight.zRotation = CGFloat(Double.pi/2)
        arrowRight.zPosition = CGFloat(10)
        arrowRight.position = PosProporcional(pos: CGPoint(x: 155, y: -50))
        arrowRight.name = "arrowRight"
        
        if navegação.Labirinto.historico.count > 0 {
            drawLine()
        }
        
        self.addChild(nodeStart)
        self.addChild(nodeFinal)
        self.addChild(arrowLeft)
        self.addChild(arrowRight)
        self.addChild(arrowDown)
        self.addChild(arrowUp)
    }
    
    //MARK: Touch
    func TouchedLabirinto(pos : CGPoint) {
        
        if !navegação.ModulosCompletos[navegação.ModuloOlhando] {
            switch atPoint(pos).name {
                case "arrowUp":
                    vibrateLight()
                    audios["botao"]?.play()
                    if navegação.Labirinto.historico.last!.i > 0{
                        if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.i - 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j{
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["d"]! += 1
                        }
                        else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.i - 1 == navegação.Labirinto.historico[0].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[0].j {
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["d"]! += 1
                        }
                        else {
                            if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i - 1 ,j:navegação.Labirinto.historico.last!.j)}){
                                navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i - 1 ,j:navegação.Labirinto.historico.last!.j))
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0 {
                                    navegação.Labirinto.vitoria += 1
                                }
                            }
                            navegação.Labirinto.qtdSetas["u"]! -= 1
                        }
                    }
                    break
                case "arrowDown":
                    vibrateLight()
                    audios["botao"]?.play()
                    if navegação.Labirinto.historico.last!.i < 3{
                        if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.i + 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j{
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["u"]! += 1
                        }
                        else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.i + 1 == navegação.Labirinto.historico[0].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[0].j {
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["u"]! += 1
                        }
                        else {
                            if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i + 1 ,j:navegação.Labirinto.historico.last!.j)}){
                                navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i + 1 ,j:navegação.Labirinto.historico.last!.j))
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0 {
                                    navegação.Labirinto.vitoria += 1
                                    navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].1 = true
                                }
                            }
                            navegação.Labirinto.qtdSetas["d"]! -= 1
                        }
                    }
                    break
                case "arrowLeft":
                    vibrateLight()
                    audios["botao"]?.play()
                    if navegação.Labirinto.historico.last!.j > 0{
                        if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.j - 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i{
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["r"]! += 1
                        }
                        else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.j - 1 == navegação.Labirinto.historico[0].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[0].i {
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["r"]! += 1
                        }
                        else {
                            if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j - 1)}){
                                navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j - 1))
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria += 1
                                    navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].1 = true
                                }
                            }
                            navegação.Labirinto.qtdSetas["l"]! -= 1
                        }
                    }
                    break
                case "arrowRight":
                    vibrateLight()
                    audios["botao"]?.play()
                    if navegação.Labirinto.historico.last!.j < 3{
                        if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.j + 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i{
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["l"]! += 1
                        }
                        else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.j + 1 == navegação.Labirinto.historico[0].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[0].i {
                            if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                navegação.Labirinto.vitoria -= 1
                            }
                            navegação.Labirinto.historico.removeLast()
                            navegação.Labirinto.qtdSetas["l"]! += 1
                        }
                        else {
                            if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j + 1)}){
                                navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j + 1))
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0 {
                                    navegação.Labirinto.vitoria += 1
                                    navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].1 = true
                                }
                            }
                            navegação.Labirinto.qtdSetas["r"]! -= 1
                        }
                    }
                    break
                default:
                    break
            }
            if navegação.Labirinto.historico.last?.i == 0 && navegação.Labirinto.historico.last?.j == 3 {
                if navegação.Labirinto.vitoria == 4 && navegação.Labirinto.qtdSetas.allSatisfy({$0.value >= 0}) {
                    navegação.ModulosCompletos[navegação.ModuloOlhando] = true
                }
                else {
                    vibrateHeavy()
                    navegação.Labirinto.qtdSetas = navegação.Labirinto.qtdSetasIniciais
                    navegação.Labirinto.historico = [navegação.Labirinto.nodeStart]
                    navegação.Labirinto.vitoria = 0
                }
            }
            atualizarTela()
        }
        
    }
    
    //MARK: DrawLine
    fileprivate func drawLine(){
        for i in 1..<navegação.Labirinto.historico.count {
            let line = SKShapeNode()
            let path = CGMutablePath()
            path.move(to: returnPoint(i: navegação.Labirinto.historico[i-1].i, j: navegação.Labirinto.historico[i - 1].j))
            path.addLine(to: returnPoint(i: navegação.Labirinto.historico[i].i, j: navegação.Labirinto.historico[i].j))
            line.zPosition = 15
            line.path = path
            line.strokeColor = (navegação.ModulosCompletos[navegação.ModuloOlhando] ? UIColor(red: 0.57, green: 1, blue: 0.56, alpha: 1) : UIColor.black)
            line.lineWidth = 4
            self.addChild(line)
        }
    }
    
    fileprivate func drawLineFechado(){
        for i in 1..<navegação.Labirinto.historico.count {
            let line = SKShapeNode()
            let path = CGMutablePath()
            path.move(to: returnPointFechado(i: navegação.Labirinto.historico[i-1].i, j: navegação.Labirinto.historico[i - 1].j))
            path.addLine(to: returnPointFechado(i: navegação.Labirinto.historico[i].i, j: navegação.Labirinto.historico[i].j))
            line.zPosition = 15
            line.path = path
            line.strokeColor = (navegação.ModulosCompletos[navegação.ModuloOlhando] ? UIColor(red: 0.57, green: 1, blue: 0.56, alpha: 1) : UIColor.black)
            line.lineWidth = 2
            self.addChild(line)
        }
    }
    
    fileprivate func returnPoint(i: Int, j: Int) -> CGPoint {
        return CGPoint(x: dictX[j]! + 1, y: dictY[i]!)
    }
    
    fileprivate func returnPointFechado(i: Int, j: Int) -> CGPoint {
        return CGPoint(x: dictXFec[j]! + 1, y: dictYFec[i]!)
    }
    
}

//MARK: Struct
struct LabirintoControler {
    var config : Bool = false
    var qtdSetas = ["r": 10, "l": 10, "u": 10, "d": 10]
    var qtdSetasIniciais = ["r": 10, "l": 10, "u": 10, "d": 10]
    var vitoria = 0
    var nodeStart = (i:0, j:0)
    var line = (local: [-1, -1], pos: CGPoint(x: 0, y: 0))
    let numRandom: Int = [0, 1, 2, 3, 4].randomElement()!
    var pos = [[(false, false), (false, false), (false, false), (true, false)],
               [(false, false), (false, false), (false, false), (false, false)],
               [(false, false), (false, false), (false, false), (false, false)],
               [(false, false), (false, false), (false, false), (false, false)],
    ]
    
    var historico:[(i:Int,j:Int)]
   
    init() {
        switch numRandom {
            case 0:
                qtdSetasIniciais["r"] = 3
                qtdSetasIniciais["d"] = 2
                pos[0][0].0 = true
                pos[2][1].0 = true
                pos[1][3].0 = true
                nodeStart = (i: 3, j:0)
                break
            case 1:
                qtdSetasIniciais["l"] = 3
                qtdSetasIniciais["u"] = 3
                pos[1][1].0 = true
                pos[0][2].0 = true
                pos[2][3].0 = true
                nodeStart = (i: 3, j: 3)
                break
            case 2:
                qtdSetasIniciais["r"] = 3
                qtdSetasIniciais["d"] = 3
                pos[3][0].0 = true
                pos[2][2].0 = true
                pos[3][3].0 = true
                nodeStart = (i: 0, j: 0)

                break
            case 3:
                qtdSetasIniciais["u"] = 4
                qtdSetasIniciais["d"] = 2
                pos[3][0].0 = true
                pos[1][2].0 = true
                pos[2][2].0 = true
                nodeStart = (i: 2, j: 1)

                break
            case 4:
                qtdSetasIniciais["l"] = 2
                qtdSetasIniciais["d"] = 2
                pos[1][0].0 = true
                pos[3][1].0 = true
                pos[0][2].0 = true
                nodeStart = (i: 1, j: 2)

                break
            default:
                break
        }
        historico = [nodeStart]
        qtdSetas = qtdSetasIniciais
    }
    
}

//MARK: Vars
fileprivate var dictX: [Int:CGFloat] = [0: -130, 1: -44, 2: 42, 3:129]
fileprivate var dictY: [Int:CGFloat] = [0: 76, 1: -10, 2: -97, 3: -183]
fileprivate var dictXFec: [Int: CGFloat] = [0: -82, 1: -28, 2: 27, 3: 81]
fileprivate var dictYFec: [Int: CGFloat] = [0: 47.5, 1: -6.5, 2: -60.5, 3: -114.5]

