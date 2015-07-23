# Description:
#   Gir hates failures
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   mrmmorris

image = [
  "http://vignette1.wikia.nocookie.net/zimwiki/images/d/dd/Bloodygir.png/revision/latest?cb=20120701203729"
]

message = [
  "I'm sorry, %, I don't know what happened..."
  "Oops... %"
  "ERROR %"
]

module.exports = (robot) ->

  regex = /^Failure:.*/

  robot.hear regex, (msg) ->
    msg.send image
    msg.send msg.random message.replace "%",
