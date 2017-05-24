//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velvet Underground](VelvetUnderground.png "Velvet Underground")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// Your code below...

canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

func drawarrow (x: Int, y: Int) {
    canvas.translate(byX: x, byY: y)
    canvas.drawShapesWithBorders = false
    
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 15, height: 45)
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 45, height: 15)
    
    canvas.rotate(by: 45)
     canvas.drawRectangle(bottomLeftX: 20, bottomLeftY: -8, width: 55, height: 15)
    canvas.rotate(by: -45)
    
    canvas.translate(byX: -x, byY: -y)
}

for x in stride(from: 0, to: 400, by: 68){
    for y in stride(from: 0, to: 400, by: 68){
        
    //make white
        if x == y {
            canvas.fillColor = Color.white
            drawarrow(x: x, y: y)
    //make purple
    }else{
        canvas.fillColor = Color.init(hue: 313, saturation: 77, brightness: 65, alpha: 100)
        drawarrow(x: x, y: y)
        }
    
    }
}

canvas.lineColor = Color.white
canvas.defaultLineWidth = 2
canvas.drawLine(fromX: 0, fromY: 440, toX: 400, toY: 440)

canvas.textColor = Color.white
canvas.drawText(message: "the velvet underground", size: 30, x: 10, y: 400, kerning: -2.0)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
