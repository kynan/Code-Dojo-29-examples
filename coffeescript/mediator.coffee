http = require 'http'

mediator =
  urls:
    1: 'http://localhost:3000'
  print: ->
    'foo'
  getPlay: (player) ->
    'foo'

module.exports = mediator
