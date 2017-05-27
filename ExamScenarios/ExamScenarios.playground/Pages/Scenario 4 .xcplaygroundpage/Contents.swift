//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velocity Girl](VelocityGirl.png "Velocity Girl")
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

// Color constants
let offWhite = Color(hue: 87, saturation: 6, brightness: 88, alpha: 100)
let yellow = Color(hue: 37, saturation: 93, brightness: 98, alpha: 100)
let pink = Color(hue: 326, saturation: 99, brightness: 93, alpha: 100)
let blue = Color(hue: 240, saturation: 80, brightness: 50, alpha: 50)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)

// Your code below...

canvas.drawShapesWithBorders = false

canvas.fillColor = offWhite
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)
//loop to create a grid of the background rounded rectangles
for x in stride(from: 0, to: 500, by: 100){
    for y in stride(from: -25, to: 475, by: 100){
        
        if y - x == -25 || y + x == 375 && x > 200{
            canvas.fillColor = yellow
        } else {
            canvas.fillColor = pink
        }
        canvas.drawRoundedRectangle(centreX: x, centreY: y, width: 97, height: 97, borderWidth: 20, xRadius: 20, yRadius: 20)
        
    }
}
//transparent blue overlay
for x in stride(from: -75, to: 425, by: 100){
    for y in stride(from: 0, to: 400, by: 100){
        
        canvas.fillColor = blue
        
        canvas.drawRoundedRectangle(bottomLeftX: x, bottomLeftY: y, width: 97, height: 97, borderWidth: 0, xRadius: 20, yRadius: 20)
    }
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

