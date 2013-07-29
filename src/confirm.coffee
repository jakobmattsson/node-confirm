read = require 'read'

setImm = setImmediate || process.nextTick

module.exports = confirm = ({ stdin, stdout, query, positive, negative }, callback) ->

  args = arguments

  read {
    input: stdin
    output: stdout
    prompt: query
  }, (err, response) ->
    if err
      callback(err)
    else if response == positive
      callback(null, true)
    else if response == negative
      callback(null, false)
    else
      setImm -> confirm(args...)
