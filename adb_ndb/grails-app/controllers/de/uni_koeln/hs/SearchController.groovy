package de.uni_koeln.hs

import query.util.ResultObject;

class SearchController {
	
	static allowedMethods = [search:"POST"]
	
	def dataSource
	def resultMap = [:]
	
	def index = {
	}
	
	def result = {
		def q = params.query.split()		
		ResultObject ro = new ResultObject(dataSource)
		def list = sortByRelevance(ro.search(q))
		[personIDs : list.keySet()]
	}
	
	
	def sortByRelevance = { map -> 
		def sortedMap = map.sort { a, b ->
			b.value <=> a.value
		}
	}
}