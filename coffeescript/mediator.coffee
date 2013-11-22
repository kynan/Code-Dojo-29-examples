http = require 'http'

mediator =
  urls:
    1: 'http://localhost:3000'
    2: 'http://localhost:4000'
  print: ->
    'foo'
  getPlay: (player, done) ->
    http.get mediator.urls[player], (res) ->
      res.on 'data', (chunk) ->
        done chunk.toString()
  getRound: (done) ->
    mediator.getPlay 1, done
    mediator.getPlay 2, done

module.exports = mediator
