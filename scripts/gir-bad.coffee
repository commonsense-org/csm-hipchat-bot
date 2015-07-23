# Description:
#   Gir has been bad
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bad gir!
#
# Author:
#   mrmmorris

gir = [
  "http://i44.tinypic.com/f4hc9x.jpg"
]

module.exports = (robot) ->

  regex = /(bad|hate) gir/i

  robot.hear regex, (msg) ->
    msg.send msg.random gir 
    msg.send "Sorry, %...".replace "%", msg.message.user.name
