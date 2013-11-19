should = require('chai').should()
http = require 'http'
mediator = require './mediator'

test = (url) ->
  describe 'A http game server', ->
      it 'should be able to produce a response', (done) ->
          http.get url, (res) ->
              res.statusCode.should.equal 200
              done()
      it 'should return a string', (done) ->
          http.get url, (res) ->
              res.on 'data', (chunk) ->
                  chunk.toString().should.not.be.empty
                  done()
      it 'should return one of rock, paper, scissors', (done) ->
          http.get url, (res) ->
              res.on 'data', (chunk) ->
                  ['rock', 'paper', 'scissors'].should.include chunk.toString()
                  done()

test "http://localhost:#{port}/" for port in [3000, 4000]

describe 'A mediator', ->
  it 'should print a string', ->
    mediator.print().should.not.be.empty
  it 'should retrieve a play for player 1', ->
    mediator.getPlay 1, (play) ->
      play.should.not.be.empty
  it 'should retrieve a play for player 1 which is one of rock, paper, scissors', ->
    mediator.getPlay 1, (play) ->
      ['rock', 'paper', 'scissors'].should.include play
