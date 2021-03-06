
import SpriteKit

extension GameScene {
    // MARK: Draw
    func DrawInterruptorAberto() {
        
        let s1 = SKSpriteNode(texture: getImg(index: 0, isSwicth: true), size: SizeProporcional(size: CGSize(width: 40, height: 75)))
        s1.position = PosProporcional(pos: CGPoint(x: -155 + 20, y: -150))
        s1.zPosition = CGFloat(15)
        s1.name = "1"
        
        let s2 = SKSpriteNode(texture: getImg(index: 1, isSwicth: true), size: SizeProporcional(size: CGSize(width: 40, height: 75)))
        s2.position = PosProporcional(pos: CGPoint(x: -100 + 20, y: -150))
        s2.zPosition = CGFloat(15)
        s2.name = "2"
        
        let s3 = SKSpriteNode(texture: getImg(index: 2, isSwicth: true), size: SizeProporcional(size: CGSize(width: 40, height: 75)))
        s3.position = PosProporcional(pos: CGPoint(x: -48 + 20, y: -150))
        s3.zPosition = CGFloat(15)
        s3.name = "3"
        
        let s4 = SKSpriteNode(texture: getImg(index: 3, isSwicth: true), size: SizeProporcional(size: CGSize(width: 40, height: 75)))
        s4.position = PosProporcional(pos: CGPoint(x: 48 - 20, y: -150))
        s4.zPosition = CGFloat(15)
        s4.name = "4"
        
        let s5 = SKSpriteNode(texture: getImg(index: 4, isSwicth: true), size: SizeProporcional(size: CGSize(width: 40, height: 75)))
        s5.position = PosProporcional(pos: CGPoint(x: 100 - 20, y: -150))
        s5.zPosition = CGFloat(15)
        s5.name = "5"
        
        let s6 = SKSpriteNode(texture: getImg(index: 5, isSwicth: true), size: SizeProporcional(size: CGSize(width: 40, height: 75)))
        s6.position = PosProporcional(pos: CGPoint(x: 155 - 20, y: -150))
        s6.zPosition = CGFloat(15)
        s6.name = "6"
        
        
        let l1 = SKSpriteNode(texture: getImg(index: 0, isSwicth: false), size: SizeProporcional(size: CGSize(width: 40, height: 40)))
        l1.position = PosProporcional(pos: CGPoint(x: -155 + 20, y: 50))
        l1.zPosition = CGFloat(15)
        l1.name = "l1"
        
        let l2 = SKSpriteNode(texture: getImg(index: 1, isSwicth: false), size: SizeProporcional(size: CGSize(width: 40, height: 40)))
        l2.position = PosProporcional(pos: CGPoint(x: -100 + 20, y: 50))
        l2.zPosition = CGFloat(15)
        l2.name = "l2"
        
        let l3 = SKSpriteNode(texture: getImg(index: 2, isSwicth: false), size: SizeProporcional(size: CGSize(width: 40, height: 40)))
        l3.position = PosProporcional(pos: CGPoint(x: -48 + 20, y: 50))
        l3.zPosition = CGFloat(15)
        l3.name = "l3"
        
        let l4 = SKSpriteNode(texture: getImg(index: 3, isSwicth: false), size: SizeProporcional(size: CGSize(width: 40, height: 40)))
        l4.position = PosProporcional(pos: CGPoint(x: 48 - 20, y: 50))
        l4.zPosition = CGFloat(15)
        l4.name = "l4"
        
        let l5 = SKSpriteNode(texture: getImg(index: 4, isSwicth: false), size: SizeProporcional(size: CGSize(width: 40, height: 40)))
        l5.position = PosProporcional(pos: CGPoint(x: 100 - 20, y: 50))
        l5.zPosition = CGFloat(15)
        l5.name = "l5"
        
        let l6 = SKSpriteNode(texture: getImg(index: 5, isSwicth: false), size: SizeProporcional(size: CGSize(width: 40, height: 40)))
        l6.position = PosProporcional(pos: CGPoint(x: 155 - 20, y: 50))
        l6.zPosition = CGFloat(15)
        l6.name = "l6"
        
        (verificacao.texture, verificacao.size, verificacao.position) = verificacaoGetImg()
        verificacao.size = SizeProporcional(size: verificacao.size)
        verificacao.position = PosProporcional(pos: verificacao.position)
        verificacao.zPosition = CGFloat(15)
        verificacao.name = "verificacao"
        
        self.addChild(s1)
        self.addChild(s2)
        self.addChild(s3)
        self.addChild(s4)
        self.addChild(s5)
        self.addChild(s6)

        self.addChild(l1)
        self.addChild(l2)
        self.addChild(l3)
        self.addChild(l4)
        self.addChild(l5)
        self.addChild(l6)
        
        self.addChild(verificacao)
    }
    
    func DrawInterruptorFechado() {
        let s1 = SKSpriteNode(texture: getImg(index: 0, isSwicth: true), size: SizeProporcional(size: CGSize(width: 24, height: 45)))
        s1.position = PosProporcional(pos: CGPoint(x: -105 + 20, y: -90))
        s1.zPosition = CGFloat(15)
        s1.name = "Cofre"
        
        let s2 = SKSpriteNode(texture: getImg(index: 1, isSwicth: true), size: SizeProporcional(size: CGSize(width: 24, height: 45)))
        s2.position = PosProporcional(pos: CGPoint(x: -71 + 20, y: -90))
        s2.zPosition = CGFloat(15)
        s2.name = "Cofre"
        
        let s3 = SKSpriteNode(texture: getImg(index: 2, isSwicth: true), size: SizeProporcional(size: CGSize(width: 24, height: 45)))
        s3.position = PosProporcional(pos: CGPoint(x: -37 + 20, y: -90))
        s3.zPosition = CGFloat(15)
        s3.name = "Cofre"
        
        let s4 = SKSpriteNode(texture: getImg(index: 3, isSwicth: true), size: SizeProporcional(size: CGSize(width: 24, height: 45)))
        s4.position = PosProporcional(pos: CGPoint(x: 37 - 20, y: -90))
        s4.zPosition = CGFloat(15)
        s4.name = "Cofre"
        
        let s5 = SKSpriteNode(texture: getImg(index: 4, isSwicth: true), size: SizeProporcional(size: CGSize(width: 24, height: 45)))
        s5.position = PosProporcional(pos: CGPoint(x: 71 - 20, y: -90))
        s5.zPosition = CGFloat(15)
        s5.name = "Cofre"
        
        let s6 = SKSpriteNode(texture: getImg(index: 5, isSwicth: true), size: SizeProporcional(size: CGSize(width: 24, height: 45)))
        s6.position = PosProporcional(pos: CGPoint(x: 105 - 20, y: -90))
        s6.zPosition = CGFloat(15)
        s6.name = "Cofre"
        
        
        let l1 = SKSpriteNode(texture: getImg(index: 0, isSwicth: false), size: SizeProporcional(size: CGSize(width: 24, height: 24)))
        l1.position = PosProporcional(pos: CGPoint(x: -105 + 20, y: 31))
        l1.zPosition = CGFloat(15)
        l1.name = "Cofre"
        
        let l2 = SKSpriteNode(texture: getImg(index: 1, isSwicth: false), size: SizeProporcional(size: CGSize(width: 24, height: 24)))
        l2.position = PosProporcional(pos: CGPoint(x: -71 + 20, y: 31))
        l2.zPosition = CGFloat(15)
        l2.name = "Cofre"
        
        let l3 = SKSpriteNode(texture: getImg(index: 2, isSwicth: false), size: SizeProporcional(size: CGSize(width: 24, height: 24)))
        l3.position = PosProporcional(pos: CGPoint(x: -37 + 20, y: 31))
        l3.zPosition = CGFloat(15)
        l3.name = "Cofre"
        
        let l4 = SKSpriteNode(texture: getImg(index: 3, isSwicth: false), size: SizeProporcional(size: CGSize(width: 24, height: 24)))
        l4.position = PosProporcional(pos: CGPoint(x: 37 - 20, y: 31))
        l4.zPosition = CGFloat(15)
        l4.name = "Cofre"
        
        let l5 = SKSpriteNode(texture: getImg(index: 4, isSwicth: false), size: SizeProporcional(size: CGSize(width: 24, height: 24)))
        l5.position = PosProporcional(pos: CGPoint(x: 71 - 20, y: 31))
        l5.zPosition = CGFloat(15)
        l5.name = "Cofre"
        
        let l6 = SKSpriteNode(texture: getImg(index: 5, isSwicth: false), size: SizeProporcional(size: CGSize(width: 24, height: 24)))
        l6.position = PosProporcional(pos: CGPoint(x: 105 - 20, y: 32))
        l6.zPosition = CGFloat(15)
        l6.name = "Cofre"
        
        
        (verificacao.texture, verificacao.size, verificacao.position) = verificacaoGetImg()
        verificacao.size = SizeProporcional(size: CGSize(width: verificacao.size.width * 0.5, height: verificacao.size.height * 0.5))
        verificacao.position = PosProporcional(pos: CGPoint(x: 0, y: verificacao.position.y + 15))
        verificacao.zPosition = CGFloat(15)
        verificacao.name = "Cofre"
        
        self.addChild(s1)
        self.addChild(s2)
        self.addChild(s3)
        self.addChild(s4)
        self.addChild(s5)
        self.addChild(s6)

        self.addChild(l1)
        self.addChild(l2)
        self.addChild(l3)
        self.addChild(l4)
        self.addChild(l5)
        self.addChild(l6)
        self.addChild(verificacao)
    }
    
    
    //MARK: Touched
    func TouchedInterruptor(pos : CGPoint) {
        
        if !navega????o.ModulosCompletos[navega????o.ModuloOlhando] {
            switch atPoint(pos).name {
                case "1":
                    vibrateLight()
                    _ = (!navega????o.Interruptor.switchTela[0]) ? audios["ligado"]?.play() : audios["desligado"]?.play()
                    navega????o.Interruptor.switchTela[0] = !navega????o.Interruptor.switchTela[0]
                    attLuzes(index: 0, ligado: navega????o.Interruptor.switchTela[0])
                    break
                case "2":
                    vibrateLight()
                    _ = (!navega????o.Interruptor.switchTela[1]) ? audios["ligado"]?.play() : audios["desligado"]?.play()
                    navega????o.Interruptor.switchTela[1] = !navega????o.Interruptor.switchTela[1]
                    attLuzes(index: 1, ligado: navega????o.Interruptor.switchTela[1])
                    break
                case "3":
                    vibrateLight()
                    _ = (!navega????o.Interruptor.switchTela[2]) ? audios["ligado"]?.play() : audios["desligado"]?.play()
                    navega????o.Interruptor.switchTela[2] = !navega????o.Interruptor.switchTela[2]
                    attLuzes(index: 2, ligado: navega????o.Interruptor.switchTela[2])
                    break
                case "4":
                    vibrateLight()
                    _ = (!navega????o.Interruptor.switchTela[3]) ? audios["ligado"]?.play() : audios["desligado"]?.play()
                    navega????o.Interruptor.switchTela[3] = !navega????o.Interruptor.switchTela[3]
                    attLuzes(index: 3, ligado: navega????o.Interruptor.switchTela[3])
                    break
                case "5":
                    vibrateLight()
                    _ = (!navega????o.Interruptor.switchTela[4]) ? audios["ligado"]?.play() : audios["desligado"]?.play()
                    navega????o.Interruptor.switchTela[4] = !navega????o.Interruptor.switchTela[4]
                    attLuzes(index: 4, ligado: navega????o.Interruptor.switchTela[4])
                    break
                case "6":
                    vibrateLight()
                    _ = (!navega????o.Interruptor.switchTela[5]) ? audios["ligado"]?.play() : audios["desligado"]?.play()
                    navega????o.Interruptor.switchTela[5] = !navega????o.Interruptor.switchTela[5]
                    attLuzes(index: 5, ligado: navega????o.Interruptor.switchTela[5])
                    break
                case "verificacao":
                    vibrateLight()
                    audios["ligado"]?.play()
                    navega????o.Interruptor.teste = true
                default:
                    break
            }
            
            atualizarTela()
            
            if navega????o.Interruptor.teste {
                verificacaoVitoria()
            }
        }
        
    }
    
    fileprivate func verificacaoGetImg() -> (SKTexture, CGSize, CGPoint){
        if navega????o.ModulosCompletos[navega????o.ModuloOlhando] {
            return verificacaoImgs["on"]!
        }
        else if navega????o.Interruptor.teste {
            return verificacaoImgs["test"]!
        }
        else {
            return verificacaoImgs["off"]!
        }
    }
    
    fileprivate func verificacaoVitoria(){
        if navega????o.Interruptor.senha == navega????o.Interruptor.switchTela {
            navega????o.ModulosCompletos[navega????o.ModuloOlhando] = true
            audios["ligado"]?.play()
        }
        else {
            vibrateHeavy()
            resetSwitchs()
        }
        navega????o.Interruptor.teste = false
    }
    fileprivate func resetSwitchs(){
        for i in 0...5 {
            if navega????o.Interruptor.switchTela[i]{
                navega????o.Interruptor.switchTela[i] = !navega????o.Interruptor.switchTela[i]
            }
            attLuzes(index: i, ligado: navega????o.Interruptor.switchTela[i])
        }
    }
    
    fileprivate func getImg(index: Int, isSwicth: Bool) -> SKTexture{
        if isSwicth {
            if navega????o.Interruptor.switchTela[index] {
                if navega????o.Interruptor.corSwitch[index] {
                    return switchsImgs["OnTex"]!
                }
                else { return switchsImgs["on"]! }
            }
            else {
                if navega????o.Interruptor.corSwitch[index] {
                    return switchsImgs["OffTex"]!
                }
                else {return switchsImgs["off"]! }
            }
        }
        else {
            if !navega????o.ModulosCompletos[navega????o.ModuloOlhando] {
                if navega????o.Interruptor.lampsTela[index] {
                    if navega????o.Interruptor.lamps[index] == 1{
                        return luzesImgs["red"]!
                    }
                    else {
                        return luzesImgs["yellow"]!
                    }
                }
                else{
                    return luzesImgs["off"]!
                }
            }
            else {
                return luzesImgs["green"]!
            }
        }
    }
    
    fileprivate func attLuzes(index : Int, ligado: Bool){
        for lamp in 0...5 {
            var controle = false
            
            for swit in 0...5{
                if navega????o.Interruptor.lampsSwitch[swit][lamp] && navega????o.Interruptor.switchTela[swit]{
                    controle = true
                }
            }
            navega????o.Interruptor.lampsTela[lamp] = controle
        }
    }
    
    
}
//MARK: Vars
fileprivate let luzesImgs = ["green": SKTexture(imageNamed: "lightGreen"), "off": SKTexture(imageNamed: "lightOff"), "red": SKTexture(imageNamed: "lightRed"), "yellow": SKTexture(imageNamed: "lightYellow")]
fileprivate let switchsImgs = ["off": SKTexture(imageNamed: "InterOff"), "OffTex": SKTexture(imageNamed: "InterOffTex"), "OnTex": SKTexture(imageNamed: "InterOnTex"), "on": SKTexture(imageNamed: "InterOn")]
fileprivate let verificacaoImgs = ["on": (img: SKTexture(imageNamed: "on"), size: CGSize(width: 50, height: 59), pos: CGPoint(x: 0, y: -36
)), "off": (img: SKTexture(imageNamed: "off"), size: CGSize(width: 50, height: 65), pos: CGPoint(x: 0, y: -50)), "test": (img: SKTexture(imageNamed: "test"), size: CGSize(width: 50, height: 47.6), pos: CGPoint(x: 0, y: -41))]

fileprivate var verificacao: SKSpriteNode = SKSpriteNode()

fileprivate func sortlamps() -> [Bool]{
    var aux = [Bool]()
    
    for _ in 0...5 {
        let sorteado = [false,true].randomElement()!
        aux.append(sorteado)
    }
    
    return aux
}

fileprivate func geradorSenha(lamps: [Int], corSwitch: [Bool], lampsSwitch: [[Bool]]) -> [Bool]{
    var aux = [Bool]()
    
    for i in 0...5 {
        var countRed = 0
        var countYellow = 0
    
        for j in 0...5 {
            if lampsSwitch[i][j] == true {
                if lamps[j] == 1 {
                    countRed += 1
                }
                else {
                    countYellow += 1
                    
                }
            }
        }
    
        if countRed + countYellow >= 3 && countRed > 0 && countYellow > 0 && countRed % 2 == 0 && corSwitch[i]{
            aux.append(true)
        }
        else if (countRed + countYellow >= 3 && (countRed > 0 && countYellow > 0) && !corSwitch[i]) ||
                    (countRed + countYellow >= 3 && corSwitch[i] && (countRed == 0 || countYellow == 0)) ||
                    (corSwitch[i] && countRed > 0 && countYellow > 0 && countRed + countYellow < 3){
            aux.append(true)
        }
        else{
            aux.append(false)
        }
        
    }

    
    return aux
}

//MARK: Struct
struct InterruptorController {
    var terminado : Bool = false
    var teste: Bool = false
    var lamps:[Int]
    var senha:[Bool]
    var corSwitch:[Bool]
    var lampsSwitch:[[Bool]]
    var switchTela:[Bool]
    var lampsTela:[Bool]
    init() {
        lamps = [Int]()
        senha = [Bool]()
        corSwitch = [Bool]()
        lampsSwitch = [[Bool]]()
        switchTela = [Bool]()
        lampsTela = [Bool]()
        
        var countSenha = 0
        var senhaGerada = [false, false, false, false, false, false]
        repeat {
            lamps.removeAll()
            corSwitch.removeAll()
            lampsSwitch.removeAll()
            switchTela.removeAll()
            lampsTela.removeAll()
            
            countSenha = 0
            for _ in 0...5 {
                lamps.append([0,0,0,1].randomElement()!)
                corSwitch.append([false, true].randomElement()!)
                lampsSwitch.append(sortlamps())
                switchTela.append(false)
                lampsTela.append(false)
            }
            
            senhaGerada = geradorSenha(lamps: lamps, corSwitch: corSwitch, lampsSwitch: lampsSwitch)
            
            for cell in senhaGerada {
                if cell {
                    countSenha += 1
                }
            }
        } while countSenha < 2
        
        senha = senhaGerada
    }
    
}
