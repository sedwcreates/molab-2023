//LazyHGrid Sample Code: https://tyirvine.medium.com/how-to-create-a-square-grid-using-swiftui-e8d6c3027a6c#:~:text=First%2C%20we%20have%20to%20set,fixed(10)%20.

import UIKit

// We can make the square's size a constant and use that
let squareSize: CGFloat = 10
// Our square
struct Square: View {
    var color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .frame(width: squareSize, height: squareSize, alignment: .center)
            .foregroundColor(color)
    }
}
// Our preview
struct ComponentsSquares_Previews: PreviewProvider {
    static var previews: some View {
        
        // Colours
        let
        colors = [
            Color.red,
            Color.blue,
            Color.green,
            Color.yellow,
        ]
        
        // This will be our desired spacing we want for our grid
        // If you want the grid to be truly square you can just set this to 'squareSize'
        let spacingDesired: CGFloat = 25
        // These are our grid items we'll use in the 'LazyHGrid'
        letrows=[
            GridItem(.fixed(squareSize), spacing: spacingDesired, alignment: .center), GridItem(.fixed(squareSize), spacing: spacingDesired, alignment: .center)
        ]
        // We then use the 'spacingDesired' in the grid
        LazyHGrid(rows: rows, alignment: .center, spacing: spacingDesired, pinnedViews:
                    ForEach(0 ..< 4) { colorIndex in
            Square(color: colors[colorIndex])
        }
                  }) }
}
