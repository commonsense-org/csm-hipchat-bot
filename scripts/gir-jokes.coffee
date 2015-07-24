# Description:
#   Returns a random joke from jokels.com
#
# Dependencies:
#   None
#
# Commands:
#   tell me a joke, gir
#
# Author:
#   sylturner

module.exports = (robot) ->
  robot.hear /^(?=.*(gir))(?=.*?(joke))/i, (msg) ->
    msg.http('http://jokels.com/random_joke').get() (err, res, body) ->
      joke = JSON.parse(body).joke
      msg.send "#{ joke.question }"
      setTimeout ->
        msg.send "#{ joke.answer }" 
       , 4000
