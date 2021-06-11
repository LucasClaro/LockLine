//
//  GameScene.swift
//  LockLine
//
//  Created by Lucas Claro on 18/05/21.
//

import SpriteKit
import GameplayKit
import Combine
import AVFoundation

//MARK: Dicionário de áudios
var audios: [String: AVAudioPlayer] = ["background": AVAudioPlayer(), "botao": AVAudioPlayer(), "ligado": AVAudioPlayer(), "desligado": AVAudioPlayer(), "tic": AVAudioPlayer(), "tictac": AVAudioPlayer(), "esteira": AVAudioPlayer()]

class GameScene: SKScene {
    
    let publisher = Timer.publish(every: 1, on: .current, in: .common)
    private var tempo : Int = 300
    private var tamanhoCofre : CGSize = CGSize(width: 400, height: 496)
    private var tamanhoCofreFechado : CGSize = CGSize(width: 252, height: 310)
    private var cancelable : Combine.Cancellable?
    
    var navegação = ControleNavegação()
    
    override func didMove(to view: SKView) {
        
        importarAudios()
        
        cancelable = publisher.autoconnect().sink { _ in
            self.diminuirTempo()
        }
        
        atualizarTela()
    }
    
    //MARK: atualizarTela
    func atualizarTela() {
        self.removeAllChildren()
        
        switch navegação.Tela {
            case .Menu:
                DrawMenu()
                audios["background"]?.volume = 0.4
                audios["background"]?.play()
            case .Jogo:
                let labelTempo = SKLabelNode(text: String(tempo))
                labelTempo.position = CGPoint(x: 0, y: 220)
                labelTempo.fontColor = UIColor.white
                labelTempo.zPosition = 10
                
                let quadrado = SKSpriteNode(color: UIColor.orange, size: tamanhoCofreFechado)
                quadrado.position = CGPoint(x: 0, y: 0)
                quadrado.zPosition = 5
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
                    audios["background"]?.volume = 0.1
                    quadrado.size = tamanhoCofre
                    
                    let setaBaixo = SKSpriteNode(imageNamed: "buttonBack")
                    setaBaixo.size = CGSize(width: 50, height: 30)
                    setaBaixo.position = CGPoint(x: 0, y: -350)
                    setaBaixo.name = "SetaVoltar"
                    
                    self.addChild(setaBaixo)
                }
                else {
                    verificacaoAudios()
                    audios["background"]?.volume = 0.4
                    let background = SKSpriteNode(imageNamed: "background2")
                    background.size = CGSize(width: frame.size.width, height: frame.size.height)
                    background.zPosition = 0
                    
                    let mesa = SKSpriteNode(imageNamed: "mesa")
                    mesa.size = CGSize(width: 560, height: 540)
                    mesa.position = CGPoint(x: 0, y: -280)
                    mesa.zPosition = 2
                    
                    let setaDireita = SKSpriteNode(imageNamed: "buttonRight")
                    setaDireita.size = CGSize(width: 30, height: 50)
                    setaDireita.position = CGPoint(x: 155, y: 0)
                    setaDireita.zPosition = 5
                    setaDireita.name = "SetaDireita"
                    
                    let setaEsquerda = SKSpriteNode(imageNamed: "buttonLeft")
                    setaEsquerda.size = CGSize(width: 30, height: 50)
                    setaEsquerda.position = CGPoint(x: -155, y: 0)
                    setaEsquerda.zPosition = 5
                    setaEsquerda.name = "SetaEsquerda"
                    
                    self.addChild(background)
                    self.addChild(mesa)
                    self.addChild(setaDireita)
                    self.addChild(setaEsquerda)
                }
                
                
                
                self.addChild(quadrado)
                self.addChild(labelTempo)
                
                
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
            default:
                break
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
            
            switch navegação.Tela {
                case .Menu:
                    TouchMenu(pos: pos)
                case .Jogo:
                    switch atPoint(pos).name {
                        case "SetaDireita":
                            navegação.ModuloOlhando = (navegação.ModuloOlhando + 1) % 4
                            audios["botao"]?.play()
                            atualizarTela()
                            break
                        case "SetaEsquerda":
                            navegação.ModuloOlhando = (navegação.ModuloOlhando + 3) % 4
                            audios["botao"]?.play()
                            atualizarTela()
                            break
                        case "Cofre":
                            navegação.ModuloAberto = true
                            atualizarTela()
                            break
                        case "SetaVoltar":
                            navegação.ModuloAberto = false
                            audios["botao"]?.play()
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
                default:
                    break
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
                case 3:
                    updateRelogio()
                case 4:
                    updateEsteira()
                case 5:
                    UpdateRodas()
                default:
                    break
            }
        }
    }
    
    //MARK: Funcs adicionais
    func PosProporcional(pos : CGPoint) -> CGPoint{
        return CGPoint(x: tamanhoCofre.width * pos.x/400, y: tamanhoCofre.height * pos.y/496)
    }
    
    func SizeProporcional(size : CGSize) -> CGSize {
        return CGSize(width: tamanhoCofre.width * size.width/400, height: tamanhoCofre.height * size.height/496)
    }
    
    func diminuirTempo() {
        if navegação.Tela == .Jogo {
            tempo -= 1
            atualizarTela()
        }
    }
    
    //Função para importar todos os áudios usados no jogo
    func importarAudios(){
        for i in 0...audios.count-1{
            let chave = Array(audios)[i].key
            let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: chave, ofType: "mp3")!)
            audios[chave] = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
            audios[chave]?.prepareToPlay()
            if(chave == "background" || chave == "tictac" || chave == "esteira"){
                audios[chave]!.numberOfLoops = -1
            }
        }
    }
    
    func verificacaoAudios(){
        for i in 1...audios.count-1{
            let chave = Array(audios)[i].key
            audios[chave]?.stop()
        }
    }
    
}//Fim da classe

//MARK: struct ControleNavegação
struct ControleNavegação {
    
    init() {
        ModulosEmJogo = SortearModulos()
        ModulosCompletos = [false, false, false, false]
        ModuloOlhando = 0
        ModuloAberto = false
        
    }
    
    var Tela : EnumTela = .Menu
    
    var ModulosEmJogo : [Int]
    var ModulosCompletos : [Bool]
    var ModuloOlhando : Int
    var ModuloAberto : Bool
    
    var Labirinto : LabirintoControler = LabirintoControler()
    var Letras : LetrasControler = LetrasControler()
    var Relogio : RelogioController = RelogioController()
    var Esteira : EsteiraController = EsteiraController()
    var Rodas : RodasController = RodasController()
    var Interruptor: InterruptorController = InterruptorController()
    
    //vars manual
}

func SortearModulos() -> [Int] {
    var modulos = [3,5,4]
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
