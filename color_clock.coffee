// colour_clock.cs is ported across to coffeescript using the js2coffee.org
// engine

randomInt = (min, max) ->
  Math.floor Math.random() * (max - min + 1) + min

randomFloat2DP = (min, max) ->
  randomInt(min * 100, max * 100) / 100

colorBoxes = ->
  i = 0
  while i < 100
    wrapper = document.getElementById("wrapper")
    thisBox = wrapper.children[i]
    color = HSLaSettings.randomHSLa()
    thisBox.style.background = color
    i++
  return

swatchColor = (hNumber, swatchId) ->
  color = "hsla(" + hNumber + ", 100%, 50%, 1)"
  swatch = document.getElementById(swatchId)
  swatch.style.background = color
  return

showValue = (newValue, associatedId, factor) ->
  factor = (if (typeof factor is "undefined") then 1 else factor)
  document.getElementById(associatedId).innerHTML = Math.round(newValue) / factor
  return

HSLaSettings =
  hueMin: 0
  hueMax: 360
  satMin: 0
  satMax: 100
  lightMin: 1
  lightMax: 100
  alphaMin: 0
  alphaMax: 1
  randomHSLa: ->
    H = randomInt(@hueMin, @hueMax)
    S = randomInt(@satMin, @satMax)
    L = randomInt(@lightMin, @lightMax)
    A = randomFloat2DP(@alphaMin, @alphaMax)
    "hsla( " + H + ", " + S + "%, " + L + "%, " + A + " )"
    return

