//
//  GameScene.swift
//  LockLine
//
//  Created by Lucas Claro on 18/05/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    private var tamanhoCofre : CGSize = CGSize(width: 400, height: 496)
    private var tamanhoCofreFechado : CGSize = CGSize(width: 252, height: 310)
    
    var navegação = ControleNavegação()
    
    override func didMove(to view: SKView) {
        atualizarTela()
    }
    
    //MARK: atualizarTela
    func atualizarTela() {
        self.removeAllChildren()
        
        let quadrado = SKSpriteNode(color: UIColor.orange, size: tamanhoCofreFechado)
        quadrado.position = CGPoint(x: 0, y: 0)
        quadrado.name = "Cofre"

        switch navegação.ModulosEmJogo[navegação.ModuloOlhando] {
            case 1:
                quadrado.texture = SKTexture(imageNamed: "CofreLabirinto")
            case 2:
                quadrado.texture = SKTexture(imageNamed: "CofreLetras")
            case 3:
                quadrado.texture = SKTexture(imageNamed: "CofreRelogio")
            case 4:
                quadrado.texture = SKTexture(imageNamed: "CofreEsteira")
            case 5:
                quadrado.texture = SKTexture(imageNamed: "CofreRodas")
            default:
                break
        }
        
        if navegação.ModuloAberto {
            quadrado.size = tamanhoCofre
            
            let setaBaixo = SKSpriteNode(color: UIColor.green, size: CGSize(width: 50, height: 50))
            setaBaixo.position = CGPoint(x: 0, y: -350)
            setaBaixo.name = "SetaVoltar"
            
            self.addChild(setaBaixo)
        }
        else {
            let setaDireita = SKSpriteNode(color: UIColor.red, size: CGSize(width: 50, height: 50))
            setaDireita.position = CGPoint(x: 155, y: 0)
            setaDireita.name = "SetaDireita"
            let setaEsquerda = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 50, height: 50))
            setaEsquerda.position = CGPoint(x: -155, y: 0)
            setaEsquerda.name = "SetaEsquerda"
            
            let label = SKLabelNode(text: String(navegação.ModulosEmJogo[navegação.ModuloOlhando]))
            label.fontSize = 62
            label.position = CGPoint(x: 0, y: 0)
            
            self.addChild(setaDireita)
            self.addChild(setaEsquerda)
            self.addChild(label)
        }
        
        self.addChild(quadrado)
        
        if navegação.ModuloAberto {
            switch navegação.ModulosEmJogo[navegação.ModuloOlhando] {
                case 1:
                    DrawLabirintoAberto()
                case 2:
                    DrawLetrasAberto()
                case 3:
                    DrawRelogioAberto()
                case 4:
                    DrawEsteiraAberto()
                case 5:
                    DrawRodasAberto()
                default:
                    break
            }
        }
        else {
            switch navegação.ModulosEmJogo[navegação.ModuloOlhando] {
                case 1:
                    DrawLabirintoFechado()
                case 2:
                    DrawLetrasFechado()
                case 3:
                    DrawRelogioFechado()
                case 4:
                    DrawEsteiraFechado()
                case 5:
                    DrawRodasFechado()
                default:
                    break
            }
        }
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
    
    }
    
    
    //MARK: touchesBegan
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let pos = touch.location(in: self)
            
            switch atPoint(pos).name {
                case "SetaDireita":
                    navegação.ModuloOlhando = (navegação.ModuloOlhando + 1) % 4
                    atualizarTela()
                    break
                case "SetaEsquerda":
                    navegação.ModuloOlhando = (navegação.ModuloOlhando + 3) % 4
                    atualizarTela()
                    break
                case "Cofre":
                    navegação.ModuloAberto = true
                    atualizarTela()
                    break
                case "SetaVoltar":
                    navegação.ModuloAberto = false
                    atualizarTela()
                    break
                default:
                    if navegação.ModuloAberto {
                        switch navegação.ModulosEmJogo[navegação.ModuloOlhando] {
                            case 1:
                                TouchedLabirinto(pos: pos)
                            case 2:
                                TouchedLetras(pos: pos)
                            case 3:
                                TouchedRelogio(pos: pos)
                            case 4:
                                TouchedEsteira(pos: pos)
                            case 5:
                                TouchedRodas(pos: pos)
                            default:
                                break
                        }
                    }
            }
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    //MARK: Update
    override func update(_ currentTime: TimeInterval) {
        if navegação.ModuloAberto {
            switch navegação.ModulosEmJogo[navegação.ModuloOlhando] {
                case 4:
                    updateEsteira()
                case 5:
                    UpdateRodas()
                default:
                    break
            }
        }

    }
    
    func PosProporcional(pos : CGPoint) -> CGPoint{
        return CGPoint(x: tamanhoCofre.width * pos.x/400, y: tamanhoCofre.height * pos.y/496)
    }
    
    func SizeProporcional(size : CGSize) -> CGSize {
        return CGSize(width: tamanhoCofre.width * size.width/400, height: tamanhoCofre.height * size.height/496)
    }
}

//MARK: struct ControleNavegação
struct ControleNavegação {
    
    init() {
        ModulosEmJogo = SortearModulos()
        ModulosCompletos = [false, false, false, false]
        ModuloOlhando = 0
        ModuloAberto = false
        
    }
    
    var Tela : EnumTela = .Jogo
    
    var ModulosEmJogo : [Int]
    var ModulosCompletos : [Bool]
    var ModuloOlhando : Int
    var ModuloAberto : Bool
    
    var Labirinto : LabirintoControler = LabirintoControler()
    var Letras : LetrasControler = LetrasControler()
    var Relogio : RelogioController = RelogioController()
    var Esteira : EsteiraController = EsteiraController()
    var Rodas : RodasController = RodasController()
    
    //vars manual
}

func SortearModulos() -> [Int] {
    var modulos = [5]
    while modulos.count < 4 {
        let n = [1,2,3,4,5,6,7].randomElement()!
        if modulos.firstIndex(of: n) == nil {
            modulos.append(n)
        }
    }
    
    return modulos
}

enum EnumTela {
    case Menu
    case Manual
    case Jogo
}

func mod(_ a: Int, _ n: Int) -> Int {
    precondition(n > 0, "modulus must be positive")
    let r = a % n
    return r >= 0 ? r : r + n
}
