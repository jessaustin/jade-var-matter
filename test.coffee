matter = require './jade-var-matter'

console.log matter '- var x = 3, y = 4;
                    console.log("this shouldn\'t appear");
                    - var z = 9;'
