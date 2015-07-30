# Description:
#   Calm down
#
# Configuration:
#   None
#
# Commands:
#   calm down | simmer down 
#   ALL CAPS

module.exports = (robot) ->

  calm = [
    "https://thejaggedworddotcom.files.wordpress.com/2014/12/calm-down.jpg?w=341&h=234"
    "http://i.imgur.com/VWr6I.gif"
    "http://www.johns-jokes.com/afiles/images/calm-down-bro.jpg"
    "https://media2.giphy.com/media/NjMRndamwewnu/200_s.gif"
  ]

  robot.hear /calm down|simmer down/i, (msg) ->
    msg.send msg.random calm

  robot.hear /^[A-Z\t ]+!*$/m, (msg) -> 
    msg.send msg.random calm
