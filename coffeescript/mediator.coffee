http = require 'http'

mediator =
  urls:
    1: 'http://localhost:3000'
  print: ->
    'foo'
  getPlay: (player, done) ->
    http.get mediator.urls[player], (res) ->
      res.on 'data', (chunk) ->
        done chunk.toString()

module.exports = mediator
