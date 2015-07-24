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

module.exports = (robot) ->

  regex = /(bad|hate|suck) gir/i

  robot.hear regex, (msg) ->
    msg.send "http://i44.tinypic.com/f4hc9x.jpg", "Sorry, %...".replace "%", msg.message.user.name
