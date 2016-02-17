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

HubotSlack = require 'hubot-slack'

image = [
  "http://vignette1.wikia.nocookie.net/zimwiki/images/d/dd/Bloodygir.png/revision/latest?cb=20120701203729"
]

messages = [
  "I'm sorry, %, I don't know what happened..."
  "Oops... %"
  "ERROR %"
]

module.exports = (robot) ->

  regex = /^(Failed:|Timed out:).*/

  robot.listeners.push new HubotSlack.SlackBotListener robot, regex, (msg) ->
    message = msg.random messages
    msg.send msg.random image
    msg.send message.replace "%", "@Marcus"
