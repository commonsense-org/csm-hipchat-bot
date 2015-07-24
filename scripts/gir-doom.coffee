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

module.exports = (robot) ->

  regex = /.*\bdoom[ed]?.*\b.*/i

  robot.hear regex, (msg) ->
    msg.send "https://www.youtube.com/watch?v=fqcn_TPu4qQ", "Im gunna sing The Doom Song now!"
