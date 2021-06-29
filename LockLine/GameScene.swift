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
var audios: [String: AVAudioPlayer] = ["background": AVAudioPlayer(), "botao": AVAudioPlayer(), "ligado": AVAudioPlayer(), "desligado": AVAudioPlayer(), "tic": AVAudioPlayer(), "tictac": AVAudioPlayer(), "esteira": AVAudioPlayer(), "clickCofre": AVAudioPlayer(), "clickMaleta": AVAudioPlayer(), "roda": AVAudioPlayer()]

class GameScene: SKScene {
    
    let publisher = Timer.publish(every: 1, on: .current, in: .common)
    private var tempo : Int = 300
    private var tamanhoCofre : CGSize = CGSize(width: 400, height: 496)
    private var tamanhoCofreFechado : CGSize = CGSize(width: 252, height: 310)
    private var cancelable : Combine.Cancellable?
    
    var navegação = ControleNavegação()
    
    override func didMove(to view: SKView) {
        
        importarAudios()
        
        tamanhoCofre = CGSize(width: frame.maxX*2*0.975, height: frame.maxY*2/1.8)
        tamanhoCofreFechado = SizeProporcional(size: CGSize(width: 252, height: 310))
        
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
            case .Manual:
                DrawManual()
            case .Jogo:
                                                                    //MARK: Geral
                let btnPause = SKSpriteNode(imageNamed: "casinha")
                btnPause.size = SizeProporcional(size: CGSize(width: 50, height: 47))
                btnPause.position = PosProporcional(pos: CGPoint(x: 170, y: 380))
                btnPause.zPosition = 10
                btnPause.name = "Pause"
                if navegação.Pausado {
                    btnPause.alpha = 0
                }
                
                let timerQuadro = SKSpriteNode(imageNamed: "quadro")
                timerQuadro.position = PosProporcional(pos: CGPoint(x: 0, y: 360))
                timerQuadro.size = SizeProporcional(size: CGSize(width: 150, height: 76))
                timerQuadro.zPosition = 10

                let labelTempo = SKLabelNode(text: String("0\(tempo / 60):\(corrigirZeros())"))
                labelTempo.position = PosProporcional(pos: CGPoint(x: 0, y: 343))
                labelTempo.fontColor = UIColor.black
                labelTempo.fontName = "Oswald-Regular"
                labelTempo.fontSize = 40
                if frame.maxY * 2 < 670 {
                    labelTempo.fontSize = 36
                    labelTempo.position = PosProporcional(pos: CGPoint(x: 0, y: 339))
                }
                labelTempo.zPosition = 11
                
                let quadrado = SKSpriteNode(color: UIColor.orange, size: tamanhoCofreFechado)
                quadrado.position = CGPoint(x: 0, y: 0)
                quadrado.zPosition = 5
                quadrado.name = "Cofre"
                
                self.addChild(btnPause)
                self.addChild(quadrado)
                self.addChild(labelTempo)
                self.addChild(timerQuadro)
                                                                    //MARK: Pausado
                if navegação.Pausado {
                    let telaPause = SKSpriteNode(imageNamed: "pausaP")
                    telaPause.size = SizeProporcional(size: CGSize(width: 400, height: 234))
                    telaPause.position = CGPoint(x: 0, y: 0)
                    telaPause.zPosition = 30
                    
                    let btnPauseSim = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 170, height: 70)))
                    btnPauseSim.position = PosProporcional(pos: CGPoint(x: -90, y: -55))
                    btnPauseSim.zPosition = 31
                    btnPauseSim.alpha = 0.001
                    btnPauseSim.name = "PauseSim"
                    
                    let btnPauseNao = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 170, height: 70)))
                    btnPauseNao.position = PosProporcional(pos: CGPoint(x: 90, y: -55))
                    btnPauseNao.zPosition = 31
                    btnPauseNao.alpha = 0.001
                    btnPauseNao.name = "PauseNao"
                    
                    let btnX = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 50, height: 50)))
                    btnX.position = PosProporcional(pos: CGPoint(x: 165, y: 75))
                    btnX.zPosition = 31
                    btnX.alpha = 0.001
                    btnX.name = "PauseNao"
                    
                    addChild(btnX)
                    addChild(telaPause)
                    addChild(btnPauseNao)
                    addChild(btnPauseSim)
                }
                
                                                                    //MARK: Finalizado
                if navegação.Finalizado {
                    let TelaFim = SKSpriteNode(imageNamed: "poxaT")
                    TelaFim.size = SizeProporcional(size: CGSize(width: 400, height: 356))
                    TelaFim.position = CGPoint(x: 0, y: 0)
                    TelaFim.zPosition = 30
                    
                    let btnRestart = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 230, height: 70)))
                    btnRestart.position = PosProporcional(pos: CGPoint(x: -63, y: -120))
                    btnRestart.alpha = 0.001
                    btnRestart.zPosition = 31
                    btnRestart.name = "FimRestart"
                    
                    let btnInicio = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 120, height: 70)))
                    btnInicio.position = PosProporcional(pos: CGPoint(x: 115, y: -120))
                    btnInicio.zPosition = 31
                    btnInicio.alpha = 0.001
                    btnInicio.name = "FimInicio"
                    
                    if navegação.ModulosCompletos.allSatisfy({ return $0 }) {
                        TelaFim.size = SizeProporcional(size: CGSize(width: 400, height: 356))
                        TelaFim.texture = SKTexture(imageNamed: "ParabensT")
                        btnRestart.position = PosProporcional(pos: CGPoint(x: -63, y: -115))
                        btnInicio.position = PosProporcional(pos: CGPoint(x: 115, y: -115))
                    }
                    
                    addChild(TelaFim)
                    addChild(btnRestart)
                    addChild(btnInicio)
                }
                
                                                                    //MARK: TexturaCaixa
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
                    case 7:
                        quadrado.texture = SKTexture(imageNamed: "CofreInterruptor")
                    default:
                        break
                }
                
                                                                    //MARK: GeralAberto
                if navegação.ModuloAberto {
                    
                    quadrado.size = tamanhoCofre
                    
                    self.backgroundColor = UIColor(named: "Papiro")!
                    
                    let setaBaixo = SKSpriteNode(imageNamed: "buttonBack")
                    setaBaixo.size = SizeProporcional(size: CGSize(width: 50, height: 30))
                    setaBaixo.position = PosProporcional(pos: CGPoint(x: 0, y: -350))
                    setaBaixo.name = "SetaVoltar"
                    
                    self.addChild(setaBaixo)
                }
                else {
                                                                    //MARK: GeralFechado

                    let background = SKSpriteNode(imageNamed: "background2")
                    background.size = CGSize(width: frame.size.width, height: frame.size.height)
                    background.zPosition = 0
                    
                    let mesa = SKSpriteNode(imageNamed: "mesa")
                    mesa.size = CGSize(width: 560, height: 540)
                    mesa.position = CGPoint(x: 0, y: -280)
                    mesa.zPosition = 2
                    
                    let setaDireita = SKSpriteNode(imageNamed: "buttonRight")
                    setaDireita.size = SizeProporcional(size: CGSize(width: 30, height: 50))
                    setaDireita.position = PosProporcional(pos: CGPoint(x: 155, y: 0))
                    setaDireita.zPosition = 5
                    setaDireita.name = "SetaDireita"
                    
                    let setaEsquerda = SKSpriteNode(imageNamed: "buttonLeft")
                    setaEsquerda.size = SizeProporcional(size: CGSize(width: 30, height: 50))
                    setaEsquerda.position = PosProporcional(pos: CGPoint(x: -155, y: 0))
                    setaEsquerda.zPosition = 5
                    setaEsquerda.name = "SetaEsquerda"
                    
                    self.addChild(background)
                    self.addChild(mesa)
                    self.addChild(setaDireita)
                    self.addChild(setaEsquerda)
                }
                
                                                                    //MARK: PuzzleAberto
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
                        case 7:
                            DrawInterruptorAberto()
                        default:
                            break
                    }
                }
                else {
                                                                    //MARK: PuzzleFechado
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
                        case 7:
                            DrawInterruptorFechado()
                        default:
                            break
                    }
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
            
            switch navegação.Tela {
                case .Menu:
                    TouchMenu(pos: pos)
                    atualizarTela()
                case .Manual:
                    TouchedManual(pos: pos)
                    atualizarTela()
                case .Jogo:
                    switch atPoint(pos).name {
                        case "SetaDireita":
                            navegação.ModuloOlhando = (navegação.ModuloOlhando + 1) % 4
                            audios["botao"]?.play()
                            atualizarTela()
                            break
                        case "SetaEsquerda":
                            if !navegação.Pausado && !navegação.Finalizado {
                                navegação.ModuloOlhando = (navegação.ModuloOlhando + 3) % 4
                                audios["botao"]?.play()
                                atualizarTela()
                            }
                            break
                        case "Cofre":
                            if !navegação.Pausado && !navegação.Finalizado {
                                navegação.ModuloAberto = true
                                audios["background"]?.volume = 0.1
                                atualizarTela()
                            }
                            break
                        case "SetaVoltar":
                            if !navegação.Pausado && !navegação.Finalizado {
                                verificacaoAudios()
                                navegação.ModuloAberto = false
                                audios["botao"]?.play()
                                audios["background"]?.volume = 0.4
                                atualizarTela()
                            }
                            break
                        case "Pause":
                            if !navegação.Pausado && !navegação.Finalizado {
                                navegação.Pausado = true
                                audios["botao"]?.play()
                                atualizarTela()
                            }
                            break
                        case "PauseSim":
                            navegação = ControleNavegação()
                            audios["botao"]?.play()
                            tempo = 300
                            atualizarTela()
                            break
                        case "PauseNao":
                            navegação.Pausado = false
                            audios["botao"]?.play()
                            atualizarTela()
                            break
                        case "FimRestart":
                            navegação = ControleNavegação()
                            tempo = 300
                            audios["botao"]?.play()
                            navegação.Tela = .Jogo
                            atualizarTela()
                            break
                        case "FimInicio":
                            navegação = ControleNavegação()
                            audios["botao"]?.play()
                            atualizarTela()
                            break
                        default:
                            if navegação.ModuloAberto && !navegação.Pausado && !navegação.Finalizado {
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
                                    case 7:
                                        TouchedInterruptor(pos: pos)
                                    default:
                                        break
                                }
                            }
                    }
            }
         
            if navegação.ModulosCompletos.allSatisfy({ return $0 }) {
                navegação.Finalizado = true
                atualizarTela()
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
    func PosProporcional(pos : CGPoint) -> CGPoint {
        return CGPoint(x: tamanhoCofre.width * pos.x/400, y: tamanhoCofre.height * pos.y/496)
    }
    
    func SizeProporcional(size : CGSize) -> CGSize {
        return CGSize(width: tamanhoCofre.width * size.width/400, height: tamanhoCofre.height * size.height/496)
    }
    
    func diminuirTempo() {
        if navegação.Tela == .Jogo && !navegação.Pausado && !navegação.Finalizado {
            tempo -= 1
            if tempo <= 0 {
                navegação.Finalizado = true
            }
            atualizarTela()
        }
    }
    
    func corrigirZeros() -> String {
        if tempo % 60 == 0 {
            return "00"
        }
        else if tempo % 60 < 10 {
            return "0\(tempo % 60)"
        }
        return String(tempo % 60)
    }
    
    //Função para importar todos os áudios usados no jogo
    func importarAudios(){
        for i in 0...audios.count-1{
            let chave = Array(audios)[i].key
            let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: chave, ofType: "mp3")!)
            audios[chave] = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
            audios[chave]?.prepareToPlay()
            if(chave == "background" || chave == "tictac" || chave == "esteira" || chave == "roda"){
                audios[chave]!.numberOfLoops = -1
            }
        }
    }
    
    func verificacaoAudios(){
        for i in 2...audios.count-1{
            let chave = Array(audios)[i].key
            audios[chave]?.stop()
        }
//        if (!audios["background"]!.isPlaying){
//            audios["background"]?.play()
//        }
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
    var Pausado : Bool = false
    var Finalizado : Bool = false
    
    var Labirinto : LabirintoControler = LabirintoControler()
    var Letras : LetrasControler = LetrasControler()
    var Relogio : RelogioController = RelogioController()
    var Esteira : EsteiraController = EsteiraController()
    var Rodas : RodasController = RodasController()
    var Interruptor: InterruptorController = InterruptorController()
    
    var Manual : ManualController = ManualController()
    
    //vars manual
}

func SortearModulos() -> [Int] {

    var modulos = [Int]()
//    modulos = [4,5,3]

    while modulos.count < 4 {
        let n = [1,2,3,4,5,7].randomElement()! //MARK: TODO return 6
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
