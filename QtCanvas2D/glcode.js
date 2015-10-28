//
// Draws a plain green cube.
//


function initializeGL(canvas) {
    var context = canvas.getContext("2d")

    for(var k in context){
        console.log(k+":"+context[k])
    }
}

function resizeGL(canvas) {

}

function paintGL(canvas) {

}
