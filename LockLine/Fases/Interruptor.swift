
import SpriteKit

extension GameScene {
    // MARK: Draw
    func DrawInterruptor() {
        
    }
    
    //MARK: Touch
    func TouchedInterruptor(pos : CGPoint) {
        
        if !navegação.Labirinto.terminado {
            switch atPoint(pos).name {
                case "1":
                    break
                
                default:
                    break
            }
            
            
            atualizarTela()
        }
        
    }
    
    
}

//MARK: Struct
struct InterruptorControler {
    var terminado : Bool = false
    
}
