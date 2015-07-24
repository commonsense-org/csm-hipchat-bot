# Description:
#   Hodor? Hodor.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   jonursenbach

module.exports = (robot) ->
  robot.hear /hodor/i, (msg) ->
    msg.send("Hodor")
