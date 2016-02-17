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
  "https://common-sense.slack.com/files/marcus/F0MLZHB25/redgir.png"
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
