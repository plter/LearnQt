var context, balls = [];

function Ball(x, y) {
    var _this = {};
    _this.x = x;
    _this.y = y;
    _this.r = 15;
    _this.speedX = Math.random() * 10 - 5;
    _this.speedY = Math.random() * 10 - 5;

    _this.move = function () {
        with (_this) {
            x += speedX;
            y += speedY;

            if (x < r) {
                speedX = Math.abs(speedX);
            }
            if (y < r) {
                speedY = Math.abs(speedY);
            }
            if (x > 550 - r) {
                speedX = -Math.abs(speedX);
            }
            if (y > 400 - r) {
                speedY = -Math.abs(speedY);
            }
        }
    };

    _this.draw = function (context) {
        with (_this) {
            context.save();
            context.translate(x, y);

            context.beginPath();
            context.fillStyle = "#cccccc";
            context.arc(0, 0, r, 0, Math.PI * 2, true);
            context.fill();
            context.fillStyle = "#333333";
            context.stroke();
            context.closePath();

            context.restore();
        }
    };

    return _this;
}


function init(canvas) {
    context = canvas.getContext("2d");

    for (var i = 0; i < 30; i++) {
        balls.push(Ball(300, 200));
    }
}

function update() {
    context.clearRect(0, 0, 550, 400);

    var b;
    for (var i = 0; i < balls.length; i++) {
        b = balls[i];
        b.move();
        b.draw(context);
    }
}


