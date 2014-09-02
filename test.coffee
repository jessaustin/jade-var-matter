matter = require './jade-var-matter'
test   = require 'tape'

             # we need these newlines
testString = '- var foo = 2;' + '\n' +
             '- var bar = 3, list = [1, 2, 3];' + '\n' +
             'ul' + '\n' +
             '  for item in list' + '\n' +
             '    - var baz = 5, bax = baz * 4;' + '\n' +
             '    li' + '\n' +
             '      =item'

test (assert) ->
  obj = matter testString
  assert.is obj.foo, 2
  assert.is obj.bar, 3
  assert.same obj.list, [1, 2, 3]
  assert.is obj.baz, 5
  assert.is obj.bax, 20
  assert.end()
