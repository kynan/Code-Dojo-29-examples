exec = require('child_process').exec
require('watchr').watch
  paths: ['test-server.coffee', 'server.coffee', 'mediator.coffee']
  listener: () ->
    exec 'npm test', (err, stdout, stderr) ->
      console.log stdout
      console.log stderr
