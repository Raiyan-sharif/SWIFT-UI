import UIKit

typealias IntMaker = ()->Int


func makeConter()->IntMaker{
    var n = 0
    
    func adder()->Int{
        n = n + 1
        return n
    }
    
    return adder
}

let counter1 = makeConter()
let counter2 = makeConter()

counter1()
counter1()
counter2()
counter2()
