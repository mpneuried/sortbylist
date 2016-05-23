sortbylist
============

[![Build Status](https://secure.travis-ci.org/mpneuried/sortbylist.png?branch=master)](http://travis-ci.org/mpneuried/sortbylist)
[![Windows Tests](https://img.shields.io/appveyor/ci/mpneuried/sortbylist.svg?label=Windows%20Test)]()
[![Dependency Status](https://david-dm.org/mpneuried/sortbylist.png)](https://david-dm.org/mpneuried/sortbylist)
[![NPM version](https://badge.fury.io/js/sortbylist.png)](http://badge.fury.io/js/sortbylist)

Small helper to sort a collection by a given list of id's

[![NPM](https://nodei.co/npm/sortbylist.png?downloads=true&stars=true)](https://nodei.co/npm/sortbylist/)

## Install

```
  npm install sortbylist
```

## Initialize

```js
var sortByList = require( "sortbylist" );

var DATA = [
	{id: "A"},
	{id: "B"},
	{id: "C"},
	{id: "D"},
	{id: "E"},
	{id: "F"}
];

sorted = sortByList( DATA, [ "D", "C", "B" ] )
// sorted will have the order D, C, B, A, E, F
// unsorted id's because the rest will be added tt the end
```

**Arguments** 

- **data** : *( `Object[]` required )* A collection to sort
- **list** : *( `Array` optional: default = `[]` )* The list to sort the collection
- **options** : *( `Object` optional )* Configuration
  - **options.key** : *( `String` optional: default = `id` )* The unique key to get a element inside the collection.
  - **options.prepend** : *( `Boolean` optional: default = `false` )* Prepend the rest instead of appending the undefined sort id's to the end

**NOTE!**: If you are using a non unique key, only the first found element will sorted. All other will be appended/prepended.

## Testing

The tests are based on the [mocha.js](https://mochajs.org/) framework with [should.js](https://shouldjs.github.io/) as assertaion lib.
To start the test just call

```
	npm test
```

or

```
	grunt test
```

If you want to be more precice use the mocha cli

```
	mocha -R nyan -t 1337 test/main.js
```

### Docker-Tests

If you want to test your module against multiple node versions you can use the docker tests.

**Preparation**

```sh
	# make sure you installed all dependencies
	npm install
	# build the files
	grunt build
```

**Run**

To run the tests through the defined versions run the following command:

```
	dockertests/run.sh
```


## Release History
|Version|Date|Description|
|:--:|:--:|:--|
|0.0.2|2016-5-23|Fixed min. required node version|
|0.0.1|2016-5-20|Initial version|

[![NPM](https://nodei.co/npm-dl/sortbylist.png?months=6)](https://nodei.co/npm/sortbylist/)

> Initially Generated with [generator-mpnodemodule](https://github.com/mpneuried/generator-mpnodemodule)

## The MIT License (MIT)

Copyright © 2016 M. Peter, http://www.tcs.de

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
