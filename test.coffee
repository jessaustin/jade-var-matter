matter = require './jade-var-matter'
test   = require 'tape'

             # we need these newlines
testString = '- var foo = 2;
              - var bar = 3, list = [1, 2, 3];
              ul
                for item in list
                  - var baz = 5, bax = baz * 4;
                  li
                    =item'

test 'notEmpty', (assert) ->
  obj = matter testString
  assert.is obj.foo, 2
  assert.is obj.bar, 3
  assert.same obj.list, [1, 2, 3]
  assert.is obj.baz, 5
  assert.is obj.bax, 20
  assert.end()

test 'empty', (assert) ->
  obj = matter()
  assert.same obj, {}
  assert.end()
