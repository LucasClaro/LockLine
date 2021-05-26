//
//  LabirintoScene.swift
//  LockLine
//
//  Created by Lucas Claro on 19/05/21.
//

import SpriteKit

extension GameScene {
    // MARK: Draw
    func DrawLabirinto() {
        let seta = SKTexture(imageNamed: "Seta")
        

        let nodeFinal = SKSpriteNode(color: (navegação.Labirinto.terminado ? UIColor.green : UIColor.black), size: SizeProporcional(size: CGSize(width: 37, height: 37)))
        nodeFinal.position = PosProporcional(pos: CGPoint(x: 130, y: 77))
        nodeFinal.zPosition = CGFloat(15)
        nodeFinal.zRotation = CGFloat(Double.pi/4)
        nodeFinal.name = "nodeFinal"
        
        let nodeStart = SKShapeNode(circleOfRadius: 18.5)
        nodeStart.fillColor = UIColor(red: 1, green: 0.94, blue: 0.84, alpha: 1)
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
        
        if !navegação.Labirinto.terminado {
            switch atPoint(pos).name {
                case "arrowUp":
                    if navegação.Labirinto.historico.last!.i > 0{
                        if true {
                            if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.i - 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j{
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.i - 1 == navegação.Labirinto.historico[0].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[0].j {
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else {
                                if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i - 1 ,j:navegação.Labirinto.historico.last!.j)}){
                                    navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i - 1 ,j:navegação.Labirinto.historico.last!.j))
                                    if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0 {
                                        navegação.Labirinto.vitoria += 1
                                    }
                                }
                            }
                        }
                    }
                    break
                case "arrowDown":
                    if navegação.Labirinto.historico.last!.i < 3{
                        if true {
                            if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.i + 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j{
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.i + 1 == navegação.Labirinto.historico[0].i && navegação.Labirinto.historico.last!.j == navegação.Labirinto.historico[0].j {
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else {
                                if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i + 1 ,j:navegação.Labirinto.historico.last!.j)}){
                                    navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i + 1 ,j:navegação.Labirinto.historico.last!.j))
                                    if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0 {
                                        navegação.Labirinto.vitoria += 1
                                        navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].1 = true
                                    }
                                }
                            }
                        }
                    }
                    break
                case "arrowLeft":
                    if navegação.Labirinto.historico.last!.j > 0{
                        if true {
                            if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.j - 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i{
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.j - 1 == navegação.Labirinto.historico[0].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[0].i {
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else {
                                if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j - 1)}){
                                    navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j - 1))
                                    if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                        navegação.Labirinto.vitoria += 1
                                        navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].1 = true
                                    }
                                        
                                }
                            }
                        }
                    }
                    break
                case "arrowRight":
                    if navegação.Labirinto.historico.last!.j < 3{
                        if true {
                            if navegação.Labirinto.historico.count > 2 && navegação.Labirinto.historico.last!.j + 1 == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[navegação.Labirinto.historico.count - 2].i{
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else if navegação.Labirinto.historico.count > 1 && navegação.Labirinto.historico.last!.j + 1 == navegação.Labirinto.historico[0].j && navegação.Labirinto.historico.last!.i == navegação.Labirinto.historico[0].i {
                                if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0{
                                    navegação.Labirinto.vitoria -= 1
                                }
                                navegação.Labirinto.historico.removeLast()
                            }
                            else {
                                if !navegação.Labirinto.historico.contains(where: {$0 == (i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j - 1)}){
                                    navegação.Labirinto.historico.append((i: navegação.Labirinto.historico.last!.i ,j:navegação.Labirinto.historico.last!.j + 1))
                                    if navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].0 {
                                        navegação.Labirinto.vitoria += 1
                                        navegação.Labirinto.pos[navegação.Labirinto.historico.last!.i][navegação.Labirinto.historico.last!.j].1 = true
                                    }
                                }
                            }
                        }
                    }
                    break
                default:
                    break
            }
            
            if navegação.Labirinto.vitoria == 4{
                navegação.Labirinto.terminado = true
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
            line.strokeColor = (navegação.Labirinto.terminado ? UIColor.red : UIColor.black)
            line.lineWidth = 4
            self.addChild(line)
        }
    }
    
    
    fileprivate func returnPoint(i: Int, j: Int) -> CGPoint {
        return CGPoint(x: dictX[j]! + 1, y: dictY[i]!)
    }
    
}

//MARK: Struct
struct LabirintoControler {
    var terminado : Bool = false
    var config : Bool = false
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
                pos[0][0].0 = true
                pos[2][1].0 = true
                pos[1][3].0 = true
                nodeStart = (i: 3, j:0)
                break
            case 1:
                pos[1][1].0 = true
                pos[0][2].0 = true
                pos[2][3].0 = true
                nodeStart = (i: 3, j: 3)

                break
            case 2:
                pos[3][0].0 = true
                pos[2][2].0 = true
                pos[3][3].0 = true
                nodeStart = (i: 0, j: 0)

                break
            case 3:
                pos[3][0].0 = true
                pos[1][2].0 = true
                pos[2][2].0 = true
                nodeStart = (i: 2, j: 1)

                break
            case 4:
                pos[1][0].0 = true
                pos[3][1].0 = true
                pos[0][2].0 = true
                nodeStart = (i: 1, j: 2)

                break
            default:
                break
        }
        historico = [nodeStart]
    }
    
}

//MARK: Vars
fileprivate var dictX: [Int:CGFloat] = [0: -131, 1:-44, 2: 44, 3:131]
fileprivate var dictY: [Int:CGFloat] = [0: 77, 1:-10, 2: -98, 3:-181]
