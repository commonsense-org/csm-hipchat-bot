# Description:
#   Gir says hello
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   who is gir?
#   gir!!!?!?!
#
# Author:
#   mrmmorris

module.exports = (robot) ->

  regex1 = /.*who.*gir.*/i
  regex2 = /gir!{1,}/i

  robot.hear regex1, (msg) ->
    msg.send "http://media.tumblr.com/tumblr_lm2puxuBGa1qafrh6.gif"
    msg.send "Hello! I am GIR. I'm here to help. Say 'gir help' for some stuff I can do!"

  robot.hear regex2, (msg) ->
    msg.send "https://s-media-cache-ak0.pinimg.com/236x/a2/4d/4c/a24d4c326fc01956f4a25ea5d6e57237.jpg"
    msg.send "NO NEED TO YELL! Say 'gir help' for commands!" 
