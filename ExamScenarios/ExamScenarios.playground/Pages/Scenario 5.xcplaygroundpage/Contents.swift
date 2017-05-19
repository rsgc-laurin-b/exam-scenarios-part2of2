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

func drawarrow (x: Float, y: Float) {
    canvas.drawShapesWithBorders = false
    canvas.fillColor = Color(hue: 308, saturation: 96, brightness: 56, alpha: 100)
    canvas.drawRectangle(centreX: x, centreY: y, width: 14, height: 40)
    canvas.saveState()
    canvas.translate(byX: 13, byY: -13)
    canvas.drawRectangle(centreX: x, centreY: y, width: 40, height: 14)
    canvas.restoreState()
//   canvas.rotate(by: -45)
//    canvas.drawRectangle(centreX: x - 8, centreY: y + 20, width: 16, height: 60)
//    canvas.restoreState()
}
drawarrow(x: 0, y: 0)

//for _ in 1...6{
//    let x=
//    drawarrow(x: 1, y: 1)
//    
//}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
