# Description:
#   Gir, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello/hi/hey gir
#
hellos = [
    "Well hello there, %",
    "Hey %!",
    "http://media.tumblr.com/tumblr_lm2puxuBGa1qafrh6.gif",
    "HellllooooOOOOOoooooooo, %"
]
module.exports = (robot) ->
    robot.hear /^(hi|hello|hey)+ \bgir\b.*/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

