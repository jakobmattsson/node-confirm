read = require 'read'

confirm = ({ stdin, stdout, query, positive, negative }) ->

  args = arguments

  read {
    stdin: stdin
    stdout: stdout
    prompt: query
  }, (err, response) ->
    if err
      process.stderr.write(err)
      process.exit(1)
    else if response == positive
      process.exit(0)
    else if response == negative
      process.exit(1)
    else
      confirm.apply(null, args)

module.exports = confirm
