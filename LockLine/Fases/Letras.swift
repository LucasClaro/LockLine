//
//  Letras.swift
//  LockLine
//
//  Created by Lucas Claro on 20/05/21.
//

import SpriteKit

extension GameScene {
    
    func DrawLetras() {
        
    }
    
    func TouchedLetras(pos : CGPoint) {
        
    }
    
}

struct LetrasControler {
    var letras = ["A", "B", "E", "F", "G", "L", "O", "P", "S", "T"]
    
}

fileprivate let PalavrasBB = ["BABA", "BATA","BATE", "BALA", "BASE", "BEGE", "BETA", "BETO", "BELA", "BELO", "BOBO", "BOTA", "BOTE", "BOTO"]
fileprivate let PalavrasBG = ["BOLA"]
fileprivate let PalavrasGT = ["GALO"]
fileprivate let PalavrasTS = ["BABA"]

fileprivate func SortearPalavras() -> [String] {
    var palavras = [String]()
    
    palavras.append(PalavrasBB.randomElement()!)
    
    return palavras
}
