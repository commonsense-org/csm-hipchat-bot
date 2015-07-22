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
#
# Author:
#   mrmmorris

gir = [
  "http://media.tumblr.com/tumblr_lm2puxuBGa1qafrh6.gif"
]

module.exports = (robot) ->

  regex = /.*(who)? gir.*/i

  robot.hear regex, (msg) ->
    msg.send msg.random gir
    msg.send "Hello! I am GIR. I'm here to help. Say 'gir help' for some stuff I can do!"
