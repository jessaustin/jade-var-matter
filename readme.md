jade-var-matter
===============

[![Build Status][travis-img]][travis-url]
[![Coverage Status][cover-img]][cover-url]
[![Dependency Status][david-img]][david-url]
[![devDependency Status][david-dep-img]][david-dep-url]
[![NPM][npmjs-img]][npmjs-url]

Lots of [markdown](http://daringfireball.net/projects/markdown/) files have
[YAML front matter](http://jekyllrb.com/docs/frontmatter/), and that's cool.
[Various](https://github.com/jxson/front-matter)
[modules](https://github.com/lmtm/gulp-front-matter) can parse YAML and [other
stuff](https://github.com/jsantell/node-json-front-matter) from Markdown text.
What if you're using [Jade](http://jade-lang.com/) instead? You can't just
chuck some YAML at the top, but fortunately you don't need to! All the
file-specific variables you're using in your Jade file are already there, in
regular old javascript *vars*:

```jade
- var foo = 2;
- var bar = 3, list = [1, 2, 3]
ul
  for item in list
    - var baz = 5, bax = baz * 4;
    li
      =item
```

Jade doesn't need any help using this data, but what if you want to pass it
along to other tools? That's where `jade-var-matter` is useful (in the
following, `jadeString` refers to the Jade snippet above):

```javascript
> var matter = require('jade-var-matter');
undefined
> matter(jadeString);
{ baz: 5, list: [ 1, 2, 3 ], bar: 3, foo: 2, bax: 20 }
```

[travis-url]: https://travis-ci.org/jessaustin/jade-var-matter "Travis"
[travis-img]: https://travis-ci.org/jessaustin/jade-var-matter.svg?branch=master
[cover-url]: https://coveralls.io/r/jessaustin/jade-var-matter?branch=master "Coveralls"
[cover-img]: https://coveralls.io/repos/jessaustin/jade-var-matter/badge.png?branch=master
[david-url]: https://david-dm.org/jessaustin/jade-var-matter "David"
[david-img]: https://david-dm.org/jessaustin/jade-var-matter.svg
[david-dep-url]: https://david-dm.org/jessaustin/jade-var-matter#info=devDependencies "David for dev dependencies"
[david-dep-img]: https://david-dm.org/jessaustin/jade-var-matter/dev-status.svg
[npmjs-url]: https://nodei.co/npm/jade-var-matter/ "npmjs"
[npmjs-img]: https://nodei.co/npm/jade-var-matter.png?compact=true
