//
//  Letras.swift
//  LockLine
//
//  Created by Lucas Claro on 20/05/21.
//

import SpriteKit

extension GameScene {
    
    func DrawLetrasFechado() {
        let palavra1 = SKLabelNode(text: String(navegação.Letras.palavrasEmJogo[0]))
        palavra1.fontSize = 52
        palavra1.position = CGPoint(x: 0, y: 0)
        palavra1.fontColor = UIColor.black
        palavra1.zPosition = 10
        
        
        self.childNode(withName: "Cofre")!.addChild(palavra1)
    }
    
    func DrawLetrasAberto() {
        
    }
    
    func TouchedLetras(pos : CGPoint) {
        
    }
    
}

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
