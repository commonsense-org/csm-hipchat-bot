# Description:
#   Aww, Yiss
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   (yiss|aw{1,6}\,? yiss) - aww, yiss image
#
# Author:
#   itsthatguy (itg)
 
images = [
  "http://24.media.tumblr.com/19d3a6d4e8704e86d8d94105a50e403f/tumblr_mvlyw1kzkv1sodo64o1_400.gif"
  "http://treasure.diylol.com/uploads/post/image/462996/resized_lizard-meme-generator-aww-yiss-fc8115.jpg"
  ]
 
module.exports = (robot) ->
  robot.hear /(yiss|aw{1,6}\,? yiss)\b/i, (msg) ->
    msg.send msg.random images

