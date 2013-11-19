should = require('chai').should()
http = require 'http'

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
