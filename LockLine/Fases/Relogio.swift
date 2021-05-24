//
//  Relogio.swift
//  LockLine
//
//  Created by Lucas Claro on 24/05/21.
//

import SpriteKit

extension GameScene {
    
    func DrawRelogioFechado() {
        
    }
    
    func DrawRelogioAberto() {
        
    }
    
    func TouchedRelogio(pos : CGPoint) {
        
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
        
        let segundosSorteados = [1,2,3,4].randomElement()!
        ponteiroSegundo = segundosSorteados
        
        let naipeSorteado = [1,2,3,4].randomElement()!
        naipeCarta = naipeSorteado
        
        senha = DefinirSenha(naipe: naipeSorteado, segundos: segundosSorteados, padroes: padraoSorteado)
    }
    
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
        case 1:
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
        case 2:
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
        case 3:
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
        case 4:
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
    
    print(mod(minutos, 60))
    return (horas, minutos)
}
