# Description:
#   Gir was the turkey all along
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   turkey
#
# Author:
#   mrmmorris

module.exports = (robot) ->

  regex = /.*\bturkey\b.*/i

  robot.hear regex, (msg) ->
    msg.send "https://www.youtube.com/watch?v=dx5qgGaBMgE"
