//
//  Letras.swift
//  LockLine
//
//  Created by Lucas Claro on 20/05/21.
//

import SpriteKit

extension GameScene {
    
    //MARK: DrawFechado
    func DrawLetrasFechado() {
        let palavra1 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[0]))
        palavra1.fontSize = 12
        palavra1.position = PosProporcional(pos: CGPoint(x: -68, y: -72))
        palavra1.fontColor = UIColor.black
        palavra1.fontName = "Oswald-Regular"
        palavra1.zPosition = 10
        palavra1.name = "Cofre"
        
        let palavra2 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[1]))
        palavra2.fontSize = 12
        palavra2.position = PosProporcional(pos: CGPoint(x: 68, y: -72))
        palavra2.fontColor = UIColor.black
        palavra2.fontName = "Oswald-Regular"
        palavra2.zPosition = 10
        palavra2.name = "Cofre"
        
        
        let palavra3 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[2]))
        palavra3.fontSize = 12
        palavra3.position = PosProporcional(pos: CGPoint(x: -68, y: -124))
        palavra3.fontColor = UIColor.black
        palavra3.fontName = "Oswald-Regular"
        palavra3.zPosition = 10
        palavra3.name = "Cofre"
        
        
        let palavra4 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[3]))
        palavra4.fontSize = 12
        palavra4.position = PosProporcional(pos: CGPoint(x: 68, y: -124))
        palavra4.fontColor = UIColor.black
        palavra4.fontName = "Oswald-Regular"
        palavra4.zPosition = 10
        palavra4.name = "Cofre"
        
        
        let simboloCofre = SKSpriteNode(imageNamed: "SimboloLetras")
        simboloCofre.position = PosProporcional(pos:CGPoint(x: -2, y: -98))
        simboloCofre.size = SizeProporcional(size: CGSize(width: 35, height: 35))
        simboloCofre.zRotation = -CGFloat(navegação.Letras.simboloCofre-1) * CGFloat.pi/2
        simboloCofre.zPosition = 10
        simboloCofre.name = "Cofre"
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            simboloCofre.texture = SKTexture(imageNamed: "SimboloVerde")
        }
        

        let simboloParede = SKSpriteNode(imageNamed: "Quadro\(navegação.Letras.simboloParede)")
        simboloParede.position = PosProporcional(pos:CGPoint(x: -100, y: 250))
        simboloParede.size = SizeProporcional(size: CGSize(width: 75, height: 108))
        simboloParede.zPosition = 10
        
        let Letra1 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[0]]))
        Letra1.fontSize = 24
        Letra1.position = PosProporcional(pos:CGPoint(x: -68, y: -8))
        Letra1.fontColor = UIColor.black
        Letra1.fontName = "Oswald-Regular"
        Letra1.zPosition = 10
        Letra1.name = "Cofre"
        
        let Letra2 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[1]]))
        Letra2.fontSize = 24
        Letra2.position = PosProporcional(pos:CGPoint(x: -24, y: -8))
        Letra2.fontColor = UIColor.black
        Letra2.fontName = "Oswald-Regular"
        Letra2.zPosition = 10
        Letra2.name = "Cofre"
        
        let Letra3 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[2]]))
        Letra3.fontSize = 24
        Letra3.position = PosProporcional(pos:CGPoint(x: 24, y: -8))
        Letra3.fontColor = UIColor.black
        Letra3.fontName = "Oswald-Regular"
        Letra3.zPosition = 10
        Letra3.name = "Cofre"
        
        let Letra4 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[3]]))
        Letra4.fontSize = 24
        Letra4.position = PosProporcional(pos:CGPoint(x: 68, y: -8))
        Letra4.fontColor = UIColor.black
        Letra4.fontName = "Oswald-Regular"
        Letra4.zPosition = 10
        Letra4.name = "Cofre"
        
        self.addChild(palavra1)
        self.addChild(palavra2)
        self.addChild(palavra3)
        self.addChild(palavra4)
        
        self.addChild(simboloCofre)
        self.addChild(simboloParede)
        
        self.addChild(Letra1)
        self.addChild(Letra2)
        self.addChild(Letra3)
        self.addChild(Letra4)
    }
    
    //MARK: DrawAberto
    func DrawLetrasAberto() {
        let palavra1 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[0]))
        palavra1.fontSize = 30
        palavra1.position = PosProporcional(pos:CGPoint(x: -108, y: -120))
        palavra1.fontColor = UIColor.black
        palavra1.fontName = "Oswald-Regular"
        palavra1.zPosition = 10
        
        let palavra2 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[1]))
        palavra2.fontSize = 30
        palavra2.position = PosProporcional(pos:CGPoint(x: 108, y: -120))
        palavra2.fontColor = UIColor.black
        palavra2.fontName = "Oswald-Regular"
        palavra2.zPosition = 10
        
        let palavra3 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[2]))
        palavra3.fontSize = 30
        palavra3.position = PosProporcional(pos:CGPoint(x: -108, y: -202))
        palavra3.fontColor = UIColor.black
        palavra3.fontName = "Oswald-Regular"
        palavra3.zPosition = 10
        
        let palavra4 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[3]))
        palavra4.fontSize = 30
        palavra4.position = PosProporcional(pos:CGPoint(x: 108, y: -202))
        palavra4.fontColor = UIColor.black
        palavra4.fontName = "Oswald-Regular"
        palavra4.zPosition = 10
        
        let simboloCofre = SKSpriteNode(imageNamed: "SimboloLetras")
        simboloCofre.position = PosProporcional(pos: CGPoint(x: -2, y: -158))
        simboloCofre.size = SizeProporcional(size: CGSize(width: 60, height: 60))
        simboloCofre.zRotation = -CGFloat(navegação.Letras.simboloCofre-1) * CGFloat.pi/2
        simboloCofre.zPosition = 10
        if navegação.ModulosCompletos[navegação.ModuloOlhando] {
            simboloCofre.texture = SKTexture(imageNamed: "simboloVerde")
        }
        
        let Letra1 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[0]]))
        Letra1.fontSize = 36
        Letra1.position = PosProporcional(pos:CGPoint(x: -110, y: -12))
        Letra1.fontColor = UIColor.black
        Letra1.fontName = "Oswald-Regular"
        Letra1.zPosition = 10
        Letra1.name = "Letra1"
        
        let Letra2 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[1]]))
        Letra2.fontSize = 36
        Letra2.position = PosProporcional(pos:CGPoint(x: -36, y: -12))
        Letra2.fontColor = UIColor.black
        Letra2.fontName = "Oswald-Regular"
        Letra2.zPosition = 10
        Letra2.name = "Letra2"
        
        let Letra3 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[2]]))
        Letra3.fontSize = 36
        Letra3.position = PosProporcional(pos:CGPoint(x: 36, y: -12))
        Letra3.fontColor = UIColor.black
        Letra3.fontName = "Oswald-Regular"
        Letra3.zPosition = 10
        Letra3.name = "Letra3"
        
        let Letra4 = SKLabelNode(text: String(navegação.Letras.letras[navegação.Letras.input[3]]))
        Letra4.fontSize = 36
        Letra4.position = PosProporcional(pos:CGPoint(x: 110, y: -12))
        Letra4.fontColor = UIColor.black
        Letra4.fontName = "Oswald-Regular"
        Letra4.zPosition = 10
        Letra4.name = "Letra4"
        
        self.addChild(palavra1)
        self.addChild(palavra2)
        self.addChild(palavra3)
        self.addChild(palavra4)
        
        self.addChild(simboloCofre)
        
        self.addChild(Letra1)
        self.addChild(Letra2)
        self.addChild(Letra3)
        self.addChild(Letra4)
    }
    
    //MARK: Touched
    func TouchedLetras(pos : CGPoint) {
        audios["clickMaleta"]?.volume = 3
        
        if !navegação.ModulosCompletos[navegação.ModuloOlhando] {
            switch atPoint(pos).name {
                case "Letra1":
                    audios["clickMaleta"]?.play()
                    navegação.Letras.input[0] = (navegação.Letras.input[0] + 1) % 10
                    atualizarTela()
                case "Letra2":
                    audios["clickMaleta"]?.play()
                    navegação.Letras.input[1] = (navegação.Letras.input[1] + 1) % 10
                    atualizarTela()
                case "Letra3":
                    audios["clickMaleta"]?.play()
                    navegação.Letras.input[2] = (navegação.Letras.input[2] + 1) % 10
                    atualizarTela()
                case "Letra4":
                    audios["clickMaleta"]?.play()
                    navegação.Letras.input[3] = (navegação.Letras.input[3] + 1) % 10
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

//MARK: struct LetrasControler
struct LetrasControler {
    
    init() {
        letras = ["A", "B", "E", "F", "G", "L", "O", "P", "S", "T"]
        
        let palavrasSorteadas = SortearPalavras()
        palavrasEmJogo = palavrasSorteadas
        
        let simboloCofreSorteado = [1,2,3,4].randomElement()!
        simboloCofre = simboloCofreSorteado
        
        let simboloParedeSorteado = [1,2,3,4,5,6].randomElement()!
        simboloParede = simboloParedeSorteado
        
        senha = DefinirSenha(simboloCofre: simboloCofreSorteado, simboloParede: simboloParedeSorteado, palavras: palavrasSorteadas)
    }
    
    var letras : [String]
    var palavrasEmJogo : [String]
    var simboloCofre : Int
    var simboloParede : Int
    var senha : [String]
    
    var input = [0, 0, 0, 0]
}

fileprivate let PalavrasBB = ["BABA", "BATA", "BATE", "BALA", "BASE", "BEGE", "BETA", "BETO", "BELA", "BELO", "BOBO", "BOTA", "BOTE", "BOTO"]
fileprivate let PalavrasBG = ["BOLA", "BOLO", "FATO", "FALA", "FASE", "FOFO", "FOGE", "FOGO", "FOTO", "FOLE", "GAFE", "GATA", "GATO", "GALA"]
fileprivate let PalavrasGT = ["GALO", "GELO", "GOTA", "GOLA", "GOLE", "PAGO", "PATA", "PATO", "PELE", "PELO", "PESO", "POTE", "POLO", "TAPA"]
fileprivate let PalavrasTS = ["TATO", "TALA", "TALO", "TELA", "TOLO", "LAGE", "LAGO", "LATA", "LATE", "LOBA", "LOBO", "LOTE", "SAGA", "SAPO"]
fileprivate let ordens = [[1,2,4,4], [1,3,2,2], [1,3,2,4], [2,3,1,1], [2,3,1,4], [2,3,4,1], [2,3,4,4], [3,2,1,1], [3,2,1,4], [3,2,4,1], [3,2,4,4], [4,1,3,2], [4,1,3,3], [4,2,1,1]]

fileprivate func SortearPalavras() -> [String] {
    var palavras = [String]()
    
    palavras.append(PalavrasBB.randomElement()!)
    palavras.append(PalavrasBG.randomElement()!)
    palavras.append(PalavrasGT.randomElement()!)
    palavras.append(PalavrasTS.randomElement()!)
    
    return palavras
}


//MARK: DefinirSenha
fileprivate func DefinirSenha(simboloCofre : Int, simboloParede : Int, palavras : [String]) -> [String] {
    
    var palavraChave = 0
    
    switch simboloCofre {
        case 1:
            palavraChave = PalavrasBB.firstIndex(of: palavras[0])!
        case 2:
            palavraChave = PalavrasBG.firstIndex(of: palavras[1])!
        case 3:
            palavraChave = PalavrasGT.firstIndex(of: palavras[2])!
        case 4:
            palavraChave = PalavrasTS.firstIndex(of: palavras[3])!
        default:
            break
    }
    
    let ordem = ordens[palavraChave]
    
    var senha = [Character]()
    
    switch simboloParede {
        case 1:
            senha.append(Array(palavras[0])[ordem[0]-1])
            senha.append(Array(palavras[2])[ordem[1]-1])
            senha.append(Array(palavras[3])[ordem[2]-1])
            senha.append(Array(palavras[1])[ordem[3]-1])
        case 2:
            senha.append(Array(palavras[2])[ordem[0]-1])
            senha.append(Array(palavras[3])[ordem[1]-1])
            senha.append(Array(palavras[1])[ordem[2]-1])
            senha.append(Array(palavras[0])[ordem[3]-1])
        case 3:
            senha.append(Array(palavras[0])[ordem[0]-1])
            senha.append(Array(palavras[1])[ordem[1]-1])
            senha.append(Array(palavras[2])[ordem[2]-1])
            senha.append(Array(palavras[3])[ordem[3]-1])
        case 4:
            senha.append(Array(palavras[2])[ordem[0]-1])
            senha.append(Array(palavras[0])[ordem[1]-1])
            senha.append(Array(palavras[3])[ordem[2]-1])
            senha.append(Array(palavras[1])[ordem[3]-1])
        case 5:
            senha.append(Array(palavras[0])[ordem[0]-1])
            senha.append(Array(palavras[3])[ordem[1]-1])
            senha.append(Array(palavras[2])[ordem[2]-1])
            senha.append(Array(palavras[1])[ordem[3]-1])
        case 6:
            senha.append(Array(palavras[2])[ordem[0]-1])
            senha.append(Array(palavras[1])[ordem[1]-1])
            senha.append(Array(palavras[3])[ordem[2]-1])
            senha.append(Array(palavras[0])[ordem[3]-1])
        default:
            senha = ["A", "A", "A", "A"]
    }
    
    return senha.map({ n in
        String(n)
    })
    
}
