# # Sortbylist
#
# ### Exports: *Function*
#
# Small helper to sort a collection by a given list of id's
# 

#export this class
module.exports = ( data, list=[], options={} )->
	key = options.key or "id"
	prepend = options.prepend or false
	safeSeparator = options.safeSeparator or ":|:|:"

	# no list provided, so return original
	if not list?.length
		return data

	# on empty data return an empty array
	if not data?.length
		return []

	# create an index
	index = for el in data
		el[key].toString()

	# copy the index to ba able to detect the rest 
	indexCheck = index.join( safeSeparator ).split( safeSeparator )

	# do the sorting
	res = []
	for _l in list
		_idx = index.indexOf( _l )
		_idxCheck = indexCheck.indexOf( _l )
		if _idx >= 0 and _idxCheck >= 0
			indexCheck.splice( _idxCheck, 1 )
			res.push data[_idx]
	
	# if indexCheck is empty all data elements where added
	if not indexCheck.length
		return res

	_rest = []
	for _l in indexCheck
		_idx = index.indexOf( _l.toString() )
		if _idx >= 0
			_rest.push data[_idx]

	if prepend
		return _rest.concat( res )
	else
		return [].concat( res, _rest )