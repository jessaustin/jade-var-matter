jade-var-matter
===============

[![Build Status](https://travis-ci.org/jessaustin/jade-var-matter.svg?branch=master)](https://travis-ci.org/jessaustin/jade-var-matter "Travis")
[![Dependency Status](https://david-dm.org/jessaustin/jade-var-matter.svg)](https://david-dm.org/jessaustin/jade-var-matter "David")
[![devDependency Status](https://david-dm.org/jessaustin/jade-var-matter/dev-status.svg)](https://david-dm.org/jessaustin/jade-var-matter#info=devDependencies "David for dev dependencies")
[![NPM](https://nodei.co/npm/jade-var-matter.png)](https://nodei.co/npm/jade-var-matter/ "npmjs")

Lots of [markdown files](http://daringfireball.net/projects/markdown/) have
[Yaml front matter](http://jekyllrb.com/docs/frontmatter/), and that's cool.
[Various](https://github.com/jxson/front-matter)
[modules](https://github.com/lmtm/gulp-front-matter) can parse YAML and [other
stuff](https://github.com/jsantell/node-json-front-matter) from Markdown text.
What if you're using [Jade](http://jade-lang.com/) instead? You can't just
plunk some YAML on the front, but fortunately you don't need to! All the
file-specific variables you're using in your Jade file are already there, in
regular old javascript `var`s:

```jade
- var name='foo', next='bar'
```

Jade doesn't need any help using this data, but what if you want to pass it
along to other tools? That's where `jade-var-matter` is useful:
