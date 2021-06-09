//
//  Relogio.swift
//  LockLine
//
//  Created by Lucas Claro on 24/05/21.
//

import SpriteKit

extension GameScene {
    
    //MARK: DrawFechado
    func DrawRelogioFechado() {
        let padrao1 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[0])")
        padrao1.position = PosProporcional(pos:CGPoint(x: -70, y: 60))
        padrao1.size = SizeProporcional(size: CGSize(width: 25, height: 25))
        padrao1.zPosition = 10
        padrao1.name = "Cofre"
        
        let padrao2 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[1])")
        padrao2.position = PosProporcional(pos:CGPoint(x: -43, y: 60))
        padrao2.size = SizeProporcional(size: CGSize(width: 25, height: 25))
        padrao2.zPosition = 10
        padrao2.name = "Cofre"
        
        let padrao3 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[2])")
        padrao3.position = PosProporcional(pos:CGPoint(x: -15, y: 60))
        padrao3.size = SizeProporcional(size: CGSize(width: 25, height: 25))
        padrao3.zPosition = 10
        padrao3.name = "Cofre"
        
        let padrao4 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[3])")
        padrao4.position = PosProporcional(pos:CGPoint(x: 12, y: 60))
        padrao4.size = SizeProporcional(size: CGSize(width: 25, height: 25))
        padrao4.zPosition = 10
        padrao4.name = "Cofre"
        
        let padrao5 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[4])")
        padrao5.position = PosProporcional(pos:CGPoint(x: 39, y: 60))
        padrao5.size = SizeProporcional(size: CGSize(width: 25, height: 25))
        padrao5.zPosition = 10
        padrao5.name = "Cofre"
        
        let padrao6 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[5])")
        padrao6.position = PosProporcional(pos:CGPoint(x: 67, y: 60))
        padrao6.size = SizeProporcional(size: CGSize(width: 25, height: 25))
        padrao6.zPosition = 10
        padrao6.name = "Cofre"
        
        addChild(padrao1)
        addChild(padrao2)
        addChild(padrao3)
        addChild(padrao4)
        addChild(padrao5)
        addChild(padrao6)
        
        let ponteiroHoras = SKSpriteNode(imageNamed: "ponteiro")
        ponteiroHoras.position = PosProporcional(pos:CGPoint(x: 3, y: -34))
        ponteiroHoras.size = SizeProporcional(size: CGSize(width: 7, height: 73))
        ponteiroHoras.zPosition = 10
        ponteiroHoras.zRotation = -CGFloat(navegação.Relogio.ponteiroHoras) * CGFloat.pi/6
        ponteiroHoras.name = "Cofre"
        
        let ponteiroMinutos = SKSpriteNode(imageNamed: "ponteiro")
        ponteiroMinutos.position = PosProporcional(pos:CGPoint(x: 3, y: -34))
        ponteiroMinutos.size = SizeProporcional(size: CGSize(width: 7, height: 100))
        ponteiroMinutos.zPosition = 10
        ponteiroMinutos.zRotation = -CGFloat(navegação.Relogio.ponterioMinutos) * CGFloat.pi/6
        ponteiroMinutos.name = "Cofre"
        
        let ponteiroSegundos = SKSpriteNode(imageNamed: "ponteiroS")
        ponteiroSegundos.position = PosProporcional(pos:CGPoint(x: 3, y: -34))
        ponteiroSegundos.size = SizeProporcional(size: CGSize(width: 7, height: 100))
        ponteiroSegundos.zPosition = 10
        ponteiroSegundos.zRotation = -CGFloat(navegação.Relogio.ponteiroSegundo) * CGFloat.pi/30
        ponteiroSegundos.name = "Cofre"
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            ponteiroSegundos.texture = SKTexture(imageNamed: "ponteiroVerde")
        }
        
        addChild(ponteiroHoras)
        addChild(ponteiroMinutos)
        addChild(ponteiroSegundos)
        
        let botao = SKSpriteNode(imageNamed: "Botao")
        botao.position = PosProporcional(pos:CGPoint(x: 1, y: -130))
        botao.size = SizeProporcional(size: CGSize(width: 100, height: 31))
        botao.zPosition = 10
        botao.name = "Cofre"
        
        addChild(botao)
        
        let engrenagemHoras = SKSpriteNode(imageNamed: "Engrenagem")
        engrenagemHoras.position = PosProporcional(pos:CGPoint(x: -90, y: -120))
        engrenagemHoras.size = SizeProporcional(size: CGSize(width: 50, height: 50))
        engrenagemHoras.zPosition = 10
        engrenagemHoras.name = "Cofre"
        
        let engrenagemMinutos = SKSpriteNode(imageNamed: "Engrenagem")
        engrenagemMinutos.position = PosProporcional(pos:CGPoint(x: 90, y: -120))
        engrenagemMinutos.size = SizeProporcional(size: CGSize(width: 50, height: 50))
        engrenagemMinutos.xScale = engrenagemHoras.xScale * -1;
        engrenagemMinutos.zPosition = 10
        engrenagemMinutos.name = "Cofre"
        
        addChild(engrenagemHoras)
        addChild(engrenagemMinutos)
        
        let carta = SKSpriteNode(imageNamed: "Naipe\(navegação.Relogio.naipeCarta)")
        carta.position = PosProporcional(pos:CGPoint(x: -90, y: -170))
        carta.size = SizeProporcional(size: CGSize(width: 100, height: 57))
        carta.zPosition = 11
        
        addChild(carta)

    }
    
    //MARK: DrawAberto
    func DrawRelogioAberto() {
        let padrao1 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[0])")
        padrao1.position = PosProporcional(pos: CGPoint(x: -118, y: 95))
        padrao1.size = SizeProporcional(size: CGSize(width: 40, height: 40))
        padrao1.zPosition = 10
        
        let padrao2 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[1])")
        padrao2.position = PosProporcional(pos: CGPoint(x: -72, y: 95))
        padrao2.size = SizeProporcional(size: CGSize(width: 40, height: 40))
        padrao2.zPosition = 10
        
        let padrao3 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[2])")
        padrao3.position = PosProporcional(pos: CGPoint(x: -25, y: 95))
        padrao3.size = SizeProporcional(size: CGSize(width: 40, height: 40))
        padrao3.zPosition = 10
        
        let padrao4 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[3])")
        padrao4.position = PosProporcional(pos: CGPoint(x: 22, y: 95))
        padrao4.size = SizeProporcional(size: CGSize(width: 40, height: 40))
        padrao4.zPosition = 10
        
        let padrao5 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[4])")
        padrao5.position = PosProporcional(pos: CGPoint(x: 68, y: 95))
        padrao5.size = SizeProporcional(size: CGSize(width: 40, height: 40))
        padrao5.zPosition = 10
        
        let padrao6 = SKSpriteNode(imageNamed: "padrao\(navegação.Relogio.padroes[5])")
        padrao6.position = PosProporcional(pos: CGPoint(x: 112, y: 95))
        padrao6.size = SizeProporcional(size: CGSize(width: 40, height: 40))
        padrao6.zPosition = 10
        
        addChild(padrao1)
        addChild(padrao2)
        addChild(padrao3)
        addChild(padrao4)
        addChild(padrao5)
        addChild(padrao6)
        
        
        let ponteiroHoras = SKSpriteNode(imageNamed: "ponteiro")
        ponteiroHoras.position = PosProporcional(pos:CGPoint(x: 1, y: -54))
        ponteiroHoras.size = SizeProporcional(size: CGSize(width: 11, height: 130))
        ponteiroHoras.zPosition = 10
        ponteiroHoras.zRotation = -CGFloat(navegação.Relogio.ponteiroHoras) * CGFloat.pi/6
        
        let ponteiroMinutos = SKSpriteNode(imageNamed: "ponteiro")
        ponteiroMinutos.position = PosProporcional(pos:CGPoint(x: 1, y: -54))
        ponteiroMinutos.size = SizeProporcional(size: CGSize(width: 11, height: 160))
        ponteiroMinutos.zPosition = 10
        ponteiroMinutos.zRotation = -CGFloat(navegação.Relogio.ponterioMinutos) * CGFloat.pi/30
        
        let ponteiroSegundos = SKSpriteNode(imageNamed: "ponteiroS")
        ponteiroSegundos.position = PosProporcional(pos:CGPoint(x: 1, y: -54))
        ponteiroSegundos.size = SizeProporcional(size: CGSize(width: 11, height: 160))
        ponteiroSegundos.zPosition = 10
        ponteiroSegundos.zRotation = -CGFloat(navegação.Relogio.ponteiroSegundo) * CGFloat.pi/30
        
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            ponteiroSegundos.texture = SKTexture(imageNamed: "ponteiroVerde")
        }
        
        addChild(ponteiroHoras)
        addChild(ponteiroMinutos)
        addChild(ponteiroSegundos)
        
        let botao = SKSpriteNode(imageNamed: "Botao")
        botao.position = PosProporcional(pos:CGPoint(x: 1, y: -200))
        botao.size = SizeProporcional(size: CGSize(width: 200, height: 63))
        botao.zPosition = 10
        botao.name = "Botao"
        
        addChild(botao)
        
        let engrenagemHoras = SKSpriteNode(imageNamed: "Engrenagem")
        engrenagemHoras.position = PosProporcional(pos:CGPoint(x: -150, y: -196))
        engrenagemHoras.size = SizeProporcional(size: CGSize(width: 70, height: 70))
        engrenagemHoras.zPosition = 10
        engrenagemHoras.name = "BotaoHoras"
        
        let engrenagemMinutos = SKSpriteNode(imageNamed: "Engrenagem")
        engrenagemMinutos.position = PosProporcional(pos:CGPoint(x: 150, y: -196))
        engrenagemMinutos.size = SizeProporcional(size: CGSize(width: 70, height: 70))
        engrenagemMinutos.xScale = engrenagemHoras.xScale * -1;
        engrenagemMinutos.zPosition = 10
        engrenagemMinutos.name = "BotaoMinutos"
        
        addChild(engrenagemHoras)
        addChild(engrenagemMinutos)
    }
    
    //MARK: Update
    func updateRelogio() {
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            navegação.Relogio.ponteiroSegundo += 1
            atualizarTela()
        }
    }
    
    //MARK: Touched
    func TouchedRelogio(pos : CGPoint) {
        if !navegação.ModulosCompletos[navegação.ModuloOlhando] {
            switch atPoint(pos).name {
                case "Botao":
                    if mod(navegação.Relogio.senha.0, 12) == mod(navegação.Relogio.ponteiroHoras, 12) && mod(navegação.Relogio.senha.1, 60) == mod(navegação.Relogio.ponterioMinutos, 60){
                        audios["tictac"]?.play()
                        //run(navegação.Relogio.tictac)
                        navegação.ModulosCompletos[navegação.ModuloOlhando] = true
                    }
                    else {
                        navegação.Relogio.ponterioMinutos = 0
                        navegação.Relogio.ponteiroHoras = 0
                    }
                    atualizarTela()
                case "BotaoHoras":
                    navegação.Relogio.ponteiroHoras += 3
                    audios["tic"]?.play()
                    //run(navegação.Relogio.tic)
                    atualizarTela()
                case "BotaoMinutos":
                    navegação.Relogio.ponterioMinutos += 5
                    audios["tic"]?.play()
                    //run(navegação.Relogio.tic)
                    atualizarTela()
                default:
                    break
            }
        }
        
        let senhaInputada = navegação.Letras.input.map({ n in
            navegação.Letras.letras[n]
        })
        if navegação.Letras.senha == senhaInputada {
            navegação.ModulosCompletos[navegação.ModuloOlhando] = true
        }
        
    }
    
}

//MARK: struct RelogioController
struct RelogioController {
    init() {
        
        var padraoSorteado = [Int]()
        
        for _ in 1...6 {
            padraoSorteado.append([1,2,3,4].randomElement()!)
        }
        padroes = padraoSorteado
        
        let segundosSorteados = [7,21,36,53].randomElement()!
        ponteiroSegundo = segundosSorteados
        
        let naipeSorteado = [1,2,3,4].randomElement()!
        naipeCarta = naipeSorteado
        
        senha = DefinirSenha(naipe: naipeSorteado, segundos: segundosSorteados, padroes: padraoSorteado)
    }
    
    //let tictac = SKAction.playSoundFileNamed("tictac", waitForCompletion: false)
    //let tic = SKAction.playSoundFileNamed("tic", waitForCompletion: false)
    
    var ponteiroSegundo : Int
    var ponterioMinutos : Int = 0
    var ponteiroHoras : Int = 0
    var naipeCarta : Int
    var padroes : [Int]
    var senha : (Int, Int)
}

//MARK: DefinirSenha
fileprivate func DefinirSenha(naipe: Int, segundos : Int, padroes : [Int]) -> (Int, Int) {
    var horas = 0
    var minutos = 0
    var valorPadroes = [Int]()
    
    switch segundos {
        case 7:
            switch naipe {
                case 1:
                    horas = 12
                case 2:
                    horas = 3
                case 3:
                    horas = 9
                case 4:
                    horas = 6
                default:
                    break
            }
        case 21:
            switch naipe {
                case 1:
                    horas = 6
                case 2:
                    horas = 3
                case 3:
                    horas = 12
                case 4:
                    horas = 9
                default:
                    break
            }
        case 36:
            switch naipe {
                case 1:
                    horas = 6
                case 2:
                    horas = 9
                case 3:
                    horas = 12
                case 4:
                    horas = 3
                default:
                    break
            }
        case 53:
            switch naipe {
                case 1:
                    horas = 9
                case 2:
                    horas = 6
                case 3:
                    horas = 3
                case 4:
                    horas = 12
                default:
                    break
            }
        default:
            break
    }
    
    switch horas {
        case 12:
            valorPadroes = [30, 5, -10, -15]
        case 3:
            valorPadroes = [5, 40, -30, -20]
        case 6:
            valorPadroes = [35, -20, 30, -5]
        case 9:
            valorPadroes = [-25, 10, 40, -20]
        default:
            break
    }
    
    for padrao in padroes {
        minutos += valorPadroes[padrao-1]
    }
    
    return (horas, minutos)
}
