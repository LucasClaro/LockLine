//
//  Manual.swift
//  LockLine
//
//  Created by Lucas Claro on 09/06/21.
//

import SpriteKit

extension GameScene {
    
    func DrawManual() {

        let quadrado = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
        quadrado.position = CGPoint(x: 0, y: 0)
        quadrado.texture = SKTexture(imageNamed: "Sala")
        quadrado.zPosition = 5
        
        let Dica1 = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 100, height: 130)))
        Dica1.position = CGPoint(x: -90, y: 240)
        Dica1.zPosition = 10
        Dica1.name = "Dica1"
        
        let Dica2 = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 80, height: 80)))
        Dica2.position = CGPoint(x: 85, y: 210)
        Dica2.zPosition = 10
        Dica2.name = "Dica2"
        
        let Dica3 = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 80, height: 80)))
        Dica3.position = CGPoint(x: 93, y: 300)
        Dica3.zPosition = 10
        Dica3.name = "Dica3"
        
        let Monitor = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 150, height: 150)))
        Monitor.position = CGPoint(x: 0, y: -40)
        Monitor.zPosition = 10
        Monitor.name = "Monitor"
        
        if navegação.Manual.MonitorAberto {
            let Dica4 = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 90, height: 90)))
            Dica4.position = CGPoint(x: 150, y: 70)
            Dica4.zPosition = 16
            Dica4.name = "Dica4"
            
            addChild(Dica4)
        }
        
        let Gabinete = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 90, height: 90)))
        Gabinete.position = CGPoint(x: -150, y: -20)
        Gabinete.zPosition = 10
        Gabinete.name = "Gabinete"
        
        if navegação.Manual.GabineteAberto {
            let Dica5 = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 90, height: 90)))
            Dica5.position = CGPoint(x: 150, y: 70)
            Dica5.zPosition = 16
            Dica5.name = "Dica5"
            
            addChild(Dica5)
        }
        
        let Dica6 = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 130, height: 130)))
        Dica6.position = CGPoint(x: -40, y: -300)
        Dica6.zPosition = 10
        Dica6.name = "Dica6"
        
        let Impressora = SKSpriteNode(color: UIColor.orange, size: SizeProporcional(size: CGSize(width: 120, height: 120)))
        Impressora.position = CGPoint(x: 150, y: -130)
        Impressora.zPosition = 10
        Impressora.name = "Impressora"
        
        
        addChild(quadrado)
        addChild(Dica1)
        addChild(Dica2)
        addChild(Dica3)
        addChild(Monitor)
        addChild(Gabinete)
        addChild(Dica6)
        addChild(Impressora)
        
        if navegação.Manual.DicaAberta != 0 {
            let dicaAberta = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
            dicaAberta.position = CGPoint(x: 0, y: 0)
            dicaAberta.texture = SKTexture(imageNamed: "Dica\(navegação.Manual.DicaAberta)")
            dicaAberta.zPosition = 20
            
            addChild(dicaAberta)
        }
        
        if navegação.Manual.ImpressoraAberta {
            let impressoraAberta = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
            impressoraAberta.position = CGPoint(x: 0, y: 0)
            impressoraAberta.texture = SKTexture(imageNamed: "Impressora")
            impressoraAberta.zPosition = 15
            impressoraAberta.name = "ImpressoraAberta"
            
            addChild(impressoraAberta)
        }
        
        if navegação.Manual.MonitorAberto {
            let MonitorAberto = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
            MonitorAberto.position = CGPoint(x: 0, y: 0)
            MonitorAberto.texture = SKTexture(imageNamed: "Monitor")
            MonitorAberto.zPosition = 15
            MonitorAberto.name = "MonitorAberto"
            
            addChild(MonitorAberto)
        }
        
        if navegação.Manual.GabineteAberto {
            let GabineteAberto = SKSpriteNode(color: UIColor.orange, size: CGSize(width: frame.maxX*2, height: frame.maxY*2))
            GabineteAberto.position = CGPoint(x: 0, y: 0)
            GabineteAberto.texture = SKTexture(imageNamed: "Gabinete")
            GabineteAberto.zPosition = 15
            GabineteAberto.name = "GabineteAberto"
            
            let BtnIO = SKSpriteNode(color: UIColor.red, size: CGSize(width: 50, height: 50))
            BtnIO.position = CGPoint(x: -70, y: 100)
            BtnIO.zPosition = 16
            BtnIO.name = "BtnIO"
            if navegação.Manual.PCLigado {
                BtnIO.color = UIColor.green
            }
            
            addChild(GabineteAberto)
            addChild(BtnIO)
        }
        
    }
    
    func TouchedManual(pos : CGPoint) {
        
        switch atPoint(pos).name {
            case "Dica1":
                navegação.Manual.DicaAberta = 1
                atualizarTela()
                break
            case "Dica2":
                navegação.Manual.DicaAberta = 2
                atualizarTela()
                break
            case "Dica3":
                navegação.Manual.DicaAberta = 3
                atualizarTela()
                break
            case "Monitor":
                navegação.Manual.MonitorAberto = true
                atualizarTela()
                break
            case "MonitorAberto":
                navegação.Manual.MonitorAberto = false
                atualizarTela()
                break
            case "Dica4":
                navegação.Manual.DicaAberta = 4
                atualizarTela()
                break
            case "Gabinete":
                navegação.Manual.GabineteAberto = true
                atualizarTela()
                break
            case "GabineteAberto":
                navegação.Manual.GabineteAberto = false
                atualizarTela()
                break
            case "Dica5":
                navegação.Manual.DicaAberta = 5
                atualizarTela()
                break
            case "Dica6":
                navegação.Manual.DicaAberta = 6
                atualizarTela()
                break
            case "Impressora":
                navegação.Manual.ImpressoraAberta = true
                atualizarTela()
                break
            case "ImpressoraAberta":
                navegação.Manual.ImpressoraAberta = false
                atualizarTela()
                break
            case "BtnIO":
                navegação.Manual.PCLigado.toggle()
                atualizarTela()
                break
            default:
                navegação.Manual.DicaAberta = 0
                atualizarTela()
        }
    }
    
}

struct ManualController {
    var DicaAberta : Int = 0
    var MonitorAberto : Bool = false
    var GabineteAberto : Bool = false
    var ImpressoraAberta : Bool = false
    
    var PCLigado : Bool = false
}
