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

messages = [
  "I'm sorry, %, I don't know what happened..."
  "Oops... %"
  "ERROR %"
]

module.exports = (robot) ->

  regex = /^Failure:.*/

  robot.hear regex, (msg) ->
    message = msg.random messages
    msg.send msg.random image
    msg.send message.replace "%", "@Marcus"
