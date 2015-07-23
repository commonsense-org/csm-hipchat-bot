# Description:
#   Gir love you too
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   I love Gir!
#
# Author:
#   mrmmorris

gir = [
  "http://cdn.buzznet.com/assets/users16/cperrifan/default/gir-luvs-u--large-msg-131248560331.jpg"
  "http://memberfiles.freewebs.com/52/58/66145852/photos/Gir-3/1598253jffwssm8rw.jpg"
  "https://www.youtube.com/watch?v=-F4-cM5Sznw"
]

module.exports = (robot) ->

  regex = /.*love.*gir.*/i

  robot.hear regex, (msg) ->
    msg.send msg.random gir
