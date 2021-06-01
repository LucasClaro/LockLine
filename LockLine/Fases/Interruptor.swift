
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

    }
    
    func DrawInterruptorFechado() {
        
    }
    
    
    //MARK: Touch
    func TouchedInterruptor(pos : CGPoint) {
        
        if !navegação.Interruptor.terminado {
            switch atPoint(pos).name {
                case "1":
                    navegação.Interruptor.switchTela[0] = !navegação.Interruptor.switchTela[0]
                    break
                case "2":
                    navegação.Interruptor.switchTela[1] = !navegação.Interruptor.switchTela[1]
                    break
                case "3":
                    navegação.Interruptor.switchTela[2] = !navegação.Interruptor.switchTela[2]
                    break
                case "4":
                    navegação.Interruptor.switchTela[3] = !navegação.Interruptor.switchTela[3]
                    break
                case "5":
                    navegação.Interruptor.switchTela[4] = !navegação.Interruptor.switchTela[4]
                    break
                case "6":
                    navegação.Interruptor.switchTela[5] = !navegação.Interruptor.switchTela[5]
                    break
                default:
                    break
            }
            
            
            atualizarTela()
        }
        
    }
    
    fileprivate func getImg(index: Int, isSwicth: Bool) -> SKTexture{
        if isSwicth {
            if navegação.Interruptor.switchTela[index] {
                if navegação.Interruptor.corSwitch[index] {
                    return switchsImgs["OnTex"]!
                }
                else { return switchsImgs["on"]! }
            }
            else {
                if navegação.Interruptor.corSwitch[index] {
                    return switchsImgs["OffTex"]!
                }
                else {return switchsImgs["off"]! }
            }
        }
        else {
            if !navegação.Interruptor.terminado {
                if navegação.Interruptor.lampsTela[index] {
                    if navegação.Interruptor.lamps[index] == 1{
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
    
    
}
//MARK: Vars
fileprivate let luzesImgs = ["green": SKTexture(imageNamed: "lightGreen"), "off": SKTexture(imageNamed: "lightOff"), "red": SKTexture(imageNamed: "lightRed"), "yellow": SKTexture(imageNamed: "lightYellow")]
fileprivate let switchsImgs = ["off": SKTexture(imageNamed: "InterOff"), "OffTex": SKTexture(imageNamed: "InterOffTex"), "OnTex": SKTexture(imageNamed: "InterOnTex"), "on": SKTexture(imageNamed: "InterOn")]


fileprivate func sortlamps() -> [Int]{
    var aux = [Int]()
    
    for i in 0...5 {
        let sorteado = [0,1].randomElement()!
        if (sorteado != 0) {
            aux.append(i)
        }
    }
    
    return aux
}

fileprivate func geradorSenha(lamps: [Int], corSwitch: [Bool], lampsSwitch: [[Int]]) -> [Bool]{
    var aux = [Bool]()
    
    for i in 0...5 {
        var countRed = 0
        var countYellow = 0
    
        for lamp in lampsSwitch[i] {
            if lamp == 1 {
                countRed += 1
            }
            else {
                countYellow += 1
            }
        }
    
        if countRed + countYellow > 1 && countRed > 0 && countYellow > 0 && countRed % 2 == 0 && corSwitch[i]{
            aux.append(true)
        }
        else if (countRed + countYellow > 1 && countRed > 0 && countYellow > 0) || (countRed + countYellow > 1 && corSwitch[i]) || (corSwitch[i] && countRed > 0 && countYellow > 0){
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
    
    var lamps:[Int]
    var senha:[Bool]
    var corSwitch:[Bool]
    var lampsSwitch:[[Int]]
    var switchTela:[Bool]
    var lampsTela:[Bool]
    init() {
        lamps = [Int]()
        senha = [Bool]()
        corSwitch = [Bool]()
        lampsSwitch = [[Int]]()
        switchTela = [Bool]()
        lampsTela = [Bool]()
        
        for _ in 0...5 {
            lamps.append([0,0,0,1].randomElement()!)
            corSwitch.append([false, true].randomElement()!)
            lampsSwitch.append(sortlamps())
            switchTela.append(false)
            lampsTela.append(false)
        }
        
        senha = geradorSenha(lamps: lamps, corSwitch: corSwitch, lampsSwitch: lampsSwitch)
        print(senha)
    }
    
}
// cor do switch,
