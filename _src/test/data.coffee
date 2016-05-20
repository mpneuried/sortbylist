exports.data = [
	{
		"id": "A"
		"_id": "573eb112e50058d4fb314313",
		"index": 0,
		"guid": "6098c6d0-a270-42bd-978d-a55fcd55566f",
		"name": "Darcy Lee"
	},
	{
		"id": "B"
		"_id": "573eb112813d2979e784a153",
		"index": 1,
		"guid": "3abd0d45-f367-43d3-a814-22a299f20388",
		"name": "Katrina Chambers"
	},
	{
		"id": "C"
		"_id": "573eb1123dc70fb66d30e1cf",
		"index": 2,
		"guid": "76ea786a-cc0d-46f1-97c1-51f17c919c8d",
		"name": "Mckay Davidson"
	},
	{
		"id": "D"
		"_id": "573eb1120f11233038cfc327",
		"index": 3,
		"guid": "dd069e21-b3ab-413d-ae91-1d606974e84d",
		"name": "Juarez Kirk"
	},
	{
		"id": "E"
		"_id": "573eb1126a4d9d3ef63b3bda",
		"index": 4,
		"guid": "d5809a3d-e3ee-4529-86ae-da034248291d",
		"name": "Elvia Maynard"
	},
	{
		"id": "F"
		"_id": "573eb1128fd7eaba072b9561",
		"index": 5,
		"guid": "1a7dd73c-3700-4332-b12f-12996dadfed8",
		"name": "Cote Cochran"
	}
]
# Format: 
# KEY: Test name
# VALUE:
# 	*String*: List and expection
# 	*Array*: 
#		[ 0 ]: *String*: List to pass to the module
#		[ 1 ]: *String*: Expected result. If null [0] will be used
#		[ 2 ]: *Object*: Options

exports.lists =
	"already in order": "A,B,C,D,E,F",
	"special order I": "A,F,B,E,C,D",
	"special order II": "A,F,E,D,C,B",
	"empty list": ["", "A,B,C,D,E,F"]
	"append after list end": ["A,B", "A,B,C,D,E,F"]
	"prepend after list end": ["A,B", "C,D,E,F,A,B", {prepend:true}]
	"try another key": ["1,5,2,3", "1,5,2,3,0,4", {key:"index"}]
