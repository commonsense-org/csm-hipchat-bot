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

doom = [
  "https://www.youtube.com/watch?v=0-bozsSl6x8"
  "https://www.youtube.com/watch?v=fqcn_TPu4qQ"
]

module.exports = (robot) ->

  regex = /.*\bdoom[ed]?.*\b.*/i

  robot.hear regex, (msg) ->
    msg.send msg.random doom, "Im gunna sing The Doom Song now!"
