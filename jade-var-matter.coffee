###
 copyright (c) 2014 Jess Austin <jess.austin@gmail.com>, MIT license

 jade-var-matter reads a Jade file, and parses the "unbuffered" code that
 defines javascript `var`s.
###

{runInNewContext} = require 'vm'

regex = /(?:^|[\n;]) *- *(var [^\n;]*)[;\n]/g

module.exports = (jadeString='') ->
  matches = (while arr = regex.exec jadeString then arr[1] + ';')
    .join '\n'
  sandbox = {}
  runInNewContext matches, sandbox
  sandbox
