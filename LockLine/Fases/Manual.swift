//
//  Manual.swift
//  LockLine
//
//  Created by Lucas Claro on 09/06/21.
//

import SpriteKit

extension GameScene {
    
    func DrawManual() {
        
        guard let onbManual = UserDefaults.standard.value(forKey: "OnboardingManual") else {
            return
        }
        
        if onbManual as! Bool == true {
            
            let onboard = SKSpriteNode(imageNamed: "ManualOnboarding")
            onboard.position = CGPoint(x: 0, y: 0)
            onboard.size = SizeProporcional(size: CGSize(width: 350, height: 636))
            onboard.zPosition = 70
            
            let xOnb = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 50, height: 50)))
            xOnb.position = PosProporcional(pos: PosProporcional(pos: CGPoint(x: 145, y: 280)))
            xOnb.zPosition = 75
            xOnb.alpha = 0.0001
            xOnb.name = "xOnboard"
            
            addChild(onboard)
            addChild(xOnb)
            
        }

        let quadrado = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
        quadrado.position = CGPoint(x: 0, y: 0)
        quadrado.texture = SKTexture(imageNamed: "Sala")
        quadrado.zPosition = 5
        
        let Dica1 = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 100, height: 130)))
        Dica1.position = PosProporcional(pos: CGPoint(x: -90, y: 240))
        Dica1.zPosition = 10
        Dica1.alpha = 0.001
        Dica1.name = "Dica1"
        
        let Dica2 = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 80, height: 80)))
        Dica2.position = PosProporcional(pos: CGPoint(x: 85, y: 210))
        Dica2.zPosition = 10
        Dica2.alpha = 0.001
        Dica2.name = "Dica2"
        
        let Dica3 = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 80, height: 80)))
        Dica3.position = PosProporcional(pos: CGPoint(x: 93, y: 300))
        Dica3.zPosition = 10
        Dica3.alpha = 0.001
        Dica3.name = "Dica3"
        
        let Monitor = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 180, height: 180)))
        Monitor.position = PosProporcional(pos: CGPoint(x: -70, y: -40))
        Monitor.zPosition = 10
        Monitor.alpha = 0.001
        Monitor.name = "Monitor"
        
        let Dica4 = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 50, height: 50)))
        Dica4.position = PosProporcional(pos: CGPoint(x: -50, y: 20))
        Dica4.alpha = 0.001
        Dica4.zPosition = 16
        Dica4.name = "Dica4"
        if navegação.Manual.MonitorAberto {
            Dica4.position = PosProporcional(pos: CGPoint(x: 40, y: 210))
            Dica4.size = SizeProporcional(size: CGSize(width: 100, height: 100))
        }
        
        let Dica6 = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 130, height: 130)))
        Dica6.position = PosProporcional(pos: CGPoint(x: -40, y: -300))
        Dica6.alpha = 0.001
        Dica6.zPosition = 10
        Dica6.name = "Dica6"
        
        let Impressora = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 170, height: 120)))
        Impressora.position = PosProporcional(pos: CGPoint(x: 120, y: -130))
        Impressora.alpha = 0.001
        Impressora.zPosition = 10
        Impressora.name = "Impressora"
        
        if navegação.Manual.Imprimindo {
            let barulho = SKSpriteNode(imageNamed: "Barulho")
            barulho.position = PosProporcional(pos: CGPoint(x: 110, y: -40))
            barulho.size = SizeProporcional(size: CGSize(width: 100, height: 88))
            barulho.zPosition = 11
            
            addChild(barulho)
        }
        
        addChild(Dica1)
        addChild(Dica2)
        addChild(Dica3)
        addChild(Dica4)
        addChild(Monitor)
        addChild(Dica6)
        addChild(Impressora)
        
        if navegação.Manual.MonitorAberto {
            let BtnIO = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 50, height: 50)))
            BtnIO.position = PosProporcional(pos: CGPoint(x: 50, y: -50))
            BtnIO.zPosition = 16
            BtnIO.alpha = 0.001
            BtnIO.name = "BtnIO"
            
            addChild(BtnIO)
        }
        
        if navegação.Manual.PCLigado {
            
            quadrado.texture = SKTexture(imageNamed: "SalaPCLigado")
            
            if navegação.Manual.MonitorAberto {
                
                let DiretoriosIcon = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 50, height: 50)))
                DiretoriosIcon.position = CGPoint(x: 90, y: 70)
                DiretoriosIcon.zPosition = 16
                DiretoriosIcon.alpha = 0.001
                DiretoriosIcon.name = "Dica5"
                
                let ImpressoraIcon = SKSpriteNode(color: UIColor.white, size: SizeProporcional(size: CGSize(width: 50, height: 50)))
                ImpressoraIcon.position = CGPoint(x: -100, y: 70)
                ImpressoraIcon.zPosition = 16
                ImpressoraIcon.alpha = 0.001
                ImpressoraIcon.name = "ImpressoraIcon"
                
                addChild(DiretoriosIcon)
                addChild(ImpressoraIcon)
                
            }
        }
        
        addChild(quadrado)
        
        if navegação.Manual.DicaAberta != 0 {
            audios["background"]?.volume = 0.1
            var image = SKTexture(imageNamed: "Dica\(navegação.Manual.DicaAberta)")
            if navegação.Manual.DicaAberta == 7 && !navegação.Manual.Impresso {
                image = SKTexture(imageNamed: "DicaCorrompida")
            }
            let dicaAberta = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: image.size().height/4.5))
            
            var calculedY = (-(image.size().height/(2*4.5)) + (frame.maxX*2) + 45)
//            if navegação.Manual.visualizacaoDicaInferior {
//                calculedY = ((image.size().height/(2*4.5)) - (frame.maxX*2) - 45)
//            }
            dicaAberta.position = CGPoint(x: 0, y: calculedY)
            dicaAberta.texture = image
            dicaAberta.zPosition = 20
            dicaAberta.name = "DicaPagina"
            
//            let scroll = SKSpriteNode(imageNamed: "Scroll")
//            scroll.size = SizeProporcional(size: CGSize(width: 50, height: 78))
//            scroll.position = PosProporcional(pos: CGPoint(x: 165, y: 200))
//            scroll.zPosition = 21
//            scroll.name = "Scroll"
//
//            addChild(scroll)
            addChild(dicaAberta)
        }
        
        if navegação.Manual.MonitorAberto {
            audios["background"]?.volume = 0.1
            let MonitorAberto = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
            MonitorAberto.position = CGPoint(x: 0, y: 0)
            MonitorAberto.texture = SKTexture(imageNamed: "Monitor")
            MonitorAberto.zPosition = 15
            MonitorAberto.name = "MonitorAberto"
            if navegação.Manual.PCLigado {
                MonitorAberto.texture = SKTexture(imageNamed: "Mesa")
            }
            
            addChild(MonitorAberto)
        }
        
        let BtnSair = SKSpriteNode(imageNamed: "casinha")
        BtnSair.size = SizeProporcional(size: CGSize(width: 50, height: 47))
        BtnSair.position = PosProporcional(pos: CGPoint(x: 170, y: 390))
        BtnSair.zPosition = 50
        BtnSair.name = "BtnSair"
        if navegação.Manual.DicaAberta != 0 {
            BtnSair.size = SizeProporcional(size: CGSize(width: 40, height: 40))
            BtnSair.texture = SKTexture(imageNamed: "Fechar")
        }
        
        addChild(BtnSair)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if navegação.Manual.DicaAberta != 0 {
            guard let page = self.childNode(withName: "DicaPagina") as? SKSpriteNode else {
                return
            }
            
            var dif = (touches.first?.location(in: self).y ?? 0) - navegação.Manual.PagelastY
            navegação.Manual.PagelastY = (touches.first?.location(in: self).y ?? 0)
            
            var image = SKTexture(imageNamed: "Dica\(navegação.Manual.DicaAberta)")
            if navegação.Manual.DicaAberta == 7 && !navegação.Manual.Impresso {
                image = SKTexture(imageNamed: "DicaCorrompida")
            }
            
            print("LastY \(navegação.Manual.PagelastY)")
            print("PageY \(page.position.y)")
            print("dif \(dif)")
            
            page.removeFromParent()
            
            let dicaAberta = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: image.size().height/4.5))
            dicaAberta.position = CGPoint(x: 0, y: page.position.y + dif)
            dicaAberta.texture = image
            dicaAberta.zPosition = 20
            dicaAberta.name = "DicaPagina"
            
            print("DicaNovaYAntes \(dicaAberta.position.y)")
            print()
            
            if dicaAberta.position.y < (-(image.size().height/(2*4.5)) + (frame.maxX*2) + 45) {
                dicaAberta.position.y = (-(image.size().height/(2*4.5)) + (frame.maxX*2) + 45)
            }
            if dicaAberta.position.y > ((image.size().height/(2*4.5)) - (frame.maxX*2) - 45) {
                dicaAberta.position.y = ((image.size().height/(2*4.5)) - (frame.maxX*2) - 45)
            }
            
            print("DicaNovaYDepois \(dicaAberta.position.y)")
            
            addChild(dicaAberta)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        navegação.Manual.PagelastY = 0
    }
    
    //MARK: Touched
    func TouchedManual(pos : CGPoint) {
        
        guard let onbManual = UserDefaults.standard.value(forKey: "OnboardingManual") else {
            return
        }
        
        if onbManual as! Bool == true {
            switch atPoint(pos).name {
                case "xOnboard":
                    UserDefaults.standard.setValue(false, forKey: "OnboardingManual")
                    atualizarTela()
                default:
                    break
            }
        }
        else {
            switch atPoint(pos).name {
                case "Scroll":
                    vibrateLight()
                    navegação.Manual.visualizacaoDicaInferior.toggle()
                    atualizarTela()
                case "Dica1":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 1
                    atualizarTela()
                    break
                case "Dica2":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 2
                    atualizarTela()
                    break
                case "Dica3":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 3
                    atualizarTela()
                    break
                case "Monitor":
                    vibrateLight()
                    navegação.Manual.MonitorAberto = true
                    atualizarTela()
                    break
                case "MonitorAberto":
                    vibrateLight()
                    navegação.Manual.MonitorAberto = false
                    atualizarTela()
                    break
                case "Dica4":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 4
                    atualizarTela()
                    break
                case "Dica5":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 5
                    atualizarTela()
                    break
                case "Dica6":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 6
                    atualizarTela()
                    break
                case "Impressora":
                    vibrateLight()
                    navegação.Manual.DicaAberta = 7
                    atualizarTela()
                    break
                case "BtnIO":
                    vibrateLight()
                    navegação.Manual.PCLigado.toggle()
                    atualizarTela()
                    break
                case "ImpressoraIcon":
                    audios["impressora"]?.play()
                    vibrateLight()
                    navegação.Manual.Imprimindo = true
                    let delay = 8 // seconds to wait before firing
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(delay)) {
                        self.navegação.Manual.Imprimindo = false
                        self.navegação.Manual.Impresso = true
                        self.atualizarTela()
                    }
                    atualizarTela()
                    break
                case "BtnSair":
                    vibrateLight()
                    if navegação.Manual.DicaAberta != 0 {
                        navegação.Manual.DicaAberta = 0
                        navegação.Manual.visualizacaoDicaInferior = false
                    }
                    else {
                        navegação.Manual.DicaAberta = 0
                        navegação.Manual.Impresso = false
                        navegação.Manual.MonitorAberto = false
                        navegação.Manual.PCLigado = false
                        navegação.Tela = .Menu
                    }
                    atualizarTela()
                default:
                    break
            }
        }
        
    }
    
}

//MARK: Struct
struct ManualController {
    var DicaAberta : Int = 0
    var MonitorAberto : Bool = false
    var Impresso : Bool = false
    var Imprimindo : Bool = false
    var visualizacaoDicaInferior = false
    var PagelastY : CGFloat = 0
    
    var PCLigado : Bool = false
}
