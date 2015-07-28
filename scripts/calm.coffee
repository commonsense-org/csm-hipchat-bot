# Description:
#   Calm down
#
# Configuration:
#   None
#
# Commands:
#   hubot calm me | manatee me 
#   calm down | simmer down | that escalated quickly 
#   ALL CAPS | LONGCAPS 

module.exports = (robot) ->

  calm = [
    "https://thejaggedworddotcom.files.wordpress.com/2014/12/calm-down.jpg?w=341&h=234"
    "http://i.imgur.com/VWr6I.gif"
    "http://www.johns-jokes.com/afiles/images/calm-down-bro.jpg"
    "https://media2.giphy.com/media/NjMRndamwewnu/200_s.gif"
  ]

  robot.hear /calm down|simmer down/i, (msg) ->
    msg.send msg.random calm

  robot.hear /^[^a-z]*$/, (msg) -> 
    msg.send msg.random calm
