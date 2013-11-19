PORT = process.env.PORT || 3000

require('zappajs') 'localhost', PORT, ->
    @get '/': ->
        val = ['rock', 'paper', 'scissors'][Math.floor(Math.random() * 2.99)]
        console.log val
        val
