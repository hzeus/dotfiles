S.bnda({
  //Push bindings
  // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
  "right:ctrl;alt;cmd" : S.op("push", { "direction" : "right", "style" : "bar-resize:screenSizeX*0.4" }),
  "left:ctrl;alt;cmd" :  S.op("push", { "direction" : "left",  "style" : "bar-resize:screenSizeX*0.6" }),
  "up:ctrl;alt;cmd" :    S.op("push", { "direction" : "up",    "style" : "bar-resize:screenSizeY/2" }),
  "down:ctrl;alt;cmd" :  S.op("push", { "direction" : "down",  "style" : "bar-resize:screenSizeY/2" }),

 // Throw Bindings
  // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
  "up:ctrl;alt" : S.op("throw", { "screen" : "up" }),
  "down:ctrl;alt" : S.op("throw", { "screen" : "down" }),

  // Fullscreen
  "m:ctrl;alt;cmd": S.op("move", { "x" : "screenOriginX", "y": "screenOriginY", "width" : "screenSizeX", "height" : "screenSizeY" })
})
