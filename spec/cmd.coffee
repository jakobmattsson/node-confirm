should = require 'should'
exec = require('child_process').exec

# should do something like the below, but sending in some real stream input data

# it "should parse json", (done) ->
#   exec "node bin/confirm.js", (err, stdout, stderr) ->
#     should.not.exist err
#     stderr.should.eql ''
#     stdout.should.eql '''{
#       "a": 1
#     }\n
#     '''
#     done()
