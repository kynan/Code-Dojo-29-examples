NAME = 'Frank'

require('zappajs') ->
    @get '/': ->
        val = ['rock', 'paper', 'scissors'][Math.floor(Math.random() * 2.99)]
        console.log val
        val
