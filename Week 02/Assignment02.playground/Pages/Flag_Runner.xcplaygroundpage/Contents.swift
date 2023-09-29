// Built From John-Henry's UIRender Program
//Apple's Documentation on Graphics Rendering: https://developer.apple.com/documentation/swiftui/graphicscontext

import UIKit
//@frozen
//struct Text


let sz = CGSize(width: 500, height: 200)
let renderer = UIGraphicsImageRenderer(size: sz)


var yCount_Orange = 0
var yCount_White = 5
var yCount_Magenta = 10
var yCount_Purple = 15

let image = renderer.image { context in
    
//ui color here
    
    for _ in 1...12 {
        UIColor.orange.setFill()
        context.fill(CGRect(x: 0, y: yCount_Orange, width: 500, height: 5))
        UIColor.white.setFill()
        context.fill(CGRect(x: 0, y: yCount_White, width: 500, height: 5))
        UIColor.magenta.setFill()
        context.fill(CGRect(x: 0, y: yCount_Magenta, width: 500, height: 5))
        UIColor.purple.setFill()
        context.fill(CGRect(x: 0, y: yCount_Purple, width: 500, height: 5))
        
        yCount_Orange += 20
        yCount_White += 20
        yCount_Magenta += 20
        yCount_Purple += 20
    }
}

//func draw(
//    _ text: Text,
//    at point: CGPoint,
 //   anchor: UnitPoint = .center
//)


