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
  "http://270c81.medialib.glogster.com/media/96/9601577d5ae3380b355795f2f48fc669934b27c5cfecbd6c754db48097f812d7/5764262.png"
  "http://b68389.medialib.glogster.com/media/2ba587ff3007957077747354a9e5ff650b79a00b2ef60591150f0eb00841e955/c-how-gir-luvs-me.jpg"
  "http://memberfiles.freewebs.com/52/58/66145852/photos/Gir-3/1598253jffwssm8rw.jpg"
]

module.exports = (robot) ->

  regex = /.*(love)? gir.*/i

  robot.hear regex, (msg) ->
    msg.send msg.random gir
