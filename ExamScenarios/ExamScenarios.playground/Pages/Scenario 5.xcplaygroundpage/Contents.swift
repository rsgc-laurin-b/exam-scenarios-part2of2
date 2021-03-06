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

func drawarrow(X: Int, Y: Int){
    canvas.translate(byX: X, byY: Y)
    canvas.drawShapesWithBorders = false
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 15, height: 45)
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 45, height: 15)
    canvas.rotate(by: 45)
    canvas.drawRectangle(bottomLeftX: 20, bottomLeftY: -8, width: 55, height: 15)
    canvas.rotate(by: -45)
    canvas.translate(byX: -X, byY: -Y)
}

for x in stride(from: 0, to: 400, by: 68){
    for y in stride(from: 0, to: 400, by: 68){
        
        if x == y{
            canvas.fillColor = Color.white
            drawarrow(X: x, Y: y)
        } else {
            canvas.fillColor = Color(hue: 313, saturation: 77, brightness: 65, alpha: 100)
            drawarrow(X: x, Y: y)
        }
        
    }
}

canvas.lineColor = Color.white
canvas.defaultLineWidth = 2
//lower white line
canvas.drawLine(fromX: 0, fromY: 450, toX: 400, toY: 450)
//upper white line
canvas.drawLine(fromX: 0, fromY: 570, toX: 400, toY: 570)

//text
func text (){
    let howbig = 9
    let yValUpper = 550
    let kerndog = Float(-0.5)
   
    canvas.textColor = Color.white
    canvas.drawText(message: "the velvet underground", size: 30, x: 10, y: 410, kerning: -2.5)
    
    
    
    canvas.drawText(message: "first appearence in london", size: howbig, x: 10, y: yValUpper, kerning: kerndog)
    
     canvas.drawText(message: "with spring and pollyfloskin", size: howbig, x: 130, y: yValUpper, kerning: kerndog)
    
     canvas.drawText(message: "thursday", size: howbig, x: 280, y: yValUpper, kerning: kerndog)
    
    
     let yValLower = 540
    
     canvas.drawText(message: "the london college of printing", size: howbig, x: 10, y: yValLower, kerning: kerndog)
    
    canvas.drawText(message: "plus the great western light show", size: howbig, x: 130, y: yValLower, kerning: kerndog)
    
    canvas.drawText(message: "october 14 1971/ 8pm", size: howbig, x: 280, y: yValLower, kerning: kerndog)
}
text()

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
