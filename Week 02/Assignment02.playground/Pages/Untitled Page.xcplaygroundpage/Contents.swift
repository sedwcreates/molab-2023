
// drawing colored shapes

import UIKit

let size = CGSize(width: 400, height: 400)
let renderer = UIGraphicsImageRenderer(size: size)

var lineX = 0
var lineY = 0
let colorPalette = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green]

let image = renderer.image { context in
    
    for _ in colorPalette {
        var hue = colorPalette[orange]
        UIColor.red.setFill()
        context.fill(CGRect(x: lineX, y: lineY, width: 400, height: 1))
    }
    //        UIColor.red.setFill()
    //        context.fill(CGRect(x: lineX, y: lineY, width: 400, height: 1))
    //        UIColor.green.setFill()
    //        context.fill(CGRect(x: 0, y: 1, width: 400, height: 1))
    //        UIColor.yellow.setFill()
    //        context.fill(CGRect(x: 100, y: 0, width: 50, height: 50))
    //        UIColor.black.setFill()
    //        context.fill(CGRect(x: 150, y: 0, width: 50, height: 50))
 
}

image
