should = require('should')
_isArray = require('lodash/isArray')
_map = require('lodash/map')
DATA = require('./data').data
LISTS = require('./data').lists
sortByList = require( "../." ) 

describe "----- sortbylist TESTS -----", ->

	for testname, list of LISTS
		do( list )->
			if _isArray( list )
				[ testlist, expected, options ] = list
				if not options?
					options = {}
			else 
				testlist = list
				expected = testlist
				options = {}

			#_res = _.map( _sortByList( data, sl.split(","), options ), "id" ).join(",")
			#console.log( "EQL:" + (_res is exp), " options:" + JSON.stringify(options) + " LIST:" + sl + " RES:" + _res )
			
			# Implement tests cases here
			it testname, ->
				_result = _map( sortByList( DATA, (if testlist.length then testlist.split(",") else null ), options ), options.key or "id" )
				_result.join( "," ).should.equal( expected )
				return

			return
		
	return