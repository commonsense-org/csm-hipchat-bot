# Description:
#   You know why
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   why can't I/we/you
#
# Author:
#   mrmmorris

module.exports = (robot) ->

  regex1 = /.*why can('t|t)? (I|we)+.*/i

  robot.hear regex1, (msg) ->
    msg.send "YOU MUST CONSTRUCT ADDITIONAL PYLONS"

  regex2 = /.*why can('t|t)? (you|they).*/i

  robot.hear regex2, (msg) ->
    msg.send "THEY MUST CONSTRUCT ADDITIONAL PYLONS"
