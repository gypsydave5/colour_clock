// Adapted from my HSLa colour picker project at codecademy.com
// http://www.codecademy.com/gypsydave5/codebits/KnMQKm
// Unashamedly written with the correct spelling of colour

function randomInt(min,max) {
    return Math.floor(Math.random()*(max-min+1)+min);
}

function randomFloat2DP(min,max) {
    return randomInt(min*100,max*100)/100;
}

function timeToColour

HSLaSettings = {
    hueMin: 0,
    hueMax: 360,
    satMin: 0,
    satMax: 100,
    lightMin: 0,
    lightMax: 100,
    alphaMin: 0,
    alphaMax: 1,
    randomHSLa: function() {
        H = randomInt(this.hueMin, this.hueMax);
        S = randomInt(this.satMin, this.satMax);
        L = randomInt(this.lightMin, this.lightMax);
        A = randomFloat2DP(this.alphaMin, this.alphaMax);
        return "hsla( " + H + ", " + S + "%, " + L + "%, " + A + " )";
    }
};

function colorBoxes() {
    for (var i=0; i<100; i++) {
        var wrapper = document.getElementById("wrapper");
        var thisBox = wrapper.children[i];
        var color = HSLaSettings.randomHSLa();
        thisBox.style.background=color;
    }
}