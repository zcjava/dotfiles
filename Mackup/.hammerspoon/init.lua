local function keyCode(key, modifiers)
  modifiers = modifiers or {}

  return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
  end
end


hs.hotkey.bind({"cmd"}, 'h', keyCode('left') ,  nil,   keyCode('left'))
hs.hotkey.bind({"cmd"}, 'j', keyCode('down') ,  nil,   keyCode('down') )
hs.hotkey.bind({"cmd"}, 'k', keyCode('up')   ,  nil,   keyCode('up') )
hs.hotkey.bind({"cmd"}, 'l', keyCode('right'),  nil,   keyCode('right') )
