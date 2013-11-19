should = require('chai').should()
http = require 'http'

describe 'A http game server', ->
    it 'should be able to produce a response', (done) ->
        http.get "http://localhost:3000/", (res) ->
            res.statusCode.should.equal 200
            done()
    it 'should return a string', (done) ->
        http.get "http://localhost:3000/", (res) ->
            res.on 'data', (chunk) ->
                chunk.toString().should.not.be.empty
                done()
