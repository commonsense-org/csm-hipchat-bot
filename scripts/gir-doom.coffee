# Description:
#   Gir sings the Doom Song
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   doom
#
# Author:
#   mrmmorris

gir = [
  "https://www.youtube.com/watch?v=fqcn_TPu4qQ"
]

module.exports = (robot) ->

  regex = /.*\bdoom\b.*/i

  robot.hear regex, (msg) ->
    msg.send gir 
