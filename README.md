# [We Make Shift](http://www.wemakeshift.com)

Creative people doing shit about shit for shit.

## Version

v0.0.1 Develop

## Dev Requirements

You must have the following installed to start developing

+ [Node JS](http://nodejs.org/)
+ [Yoeman](http://yeoman.io/)
+ [Compass](http://compass-style.org/install/)
+ [Ruby (we assume you have this)](https://www.ruby-lang.org/en/downloads/)
+ [Git (we assume you have this)](https://help.github.com/articles/set-up-git)

Or you can use our Nitrous.io box that is fully setup for development

+ [Nitrous.IO](https://www.nitrous.io/app#/boxes)

## Dev Commands

Install needed node libraries:

	cd makeshift/
	npm install

Install needed bower modules:

	cd makeshift/app/
	bower install

Manually install angular generator (don't need to do this if you just go npm install see above ^)

	cd makeshift/
	npm install -g generator-angular

Run server

    cd makeshift/
    grunt server

Run the unit tests 

    grunt test

Build an optimized, production-ready version of the app (do not do this unless your serious YO)

    grunt

Generating angular stuff

	yo angular:controller myController
	yo angular:directive myDirective
	yo angular:filter myFilter
	yo angular:service myService

Install one or more bower dependencies

	bower install <dep>..<depN>

## Deploying

Build project use either or

	grunt
	grunt build

Push to subtree (after add and committing)

	git subtree push --prefix dist origin gh-pages

To setup DNS [go here](https://help.github.com/articles/setting-up-a-custom-domain-with-pages)

## Known Issues

Grunt build is not working for certian versions [see here](https://github.com/yeoman/generator-webapp/issues/140). Use this code:

	npm install grunt-contrib-imagemin@0.1.4

## Developer

Developed by Adrian Carolli

+ [@wataweb](http://twitter.com/wataweb)
+ [Github Profile](http://github.com/watadarkstar)
