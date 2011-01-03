package de.uni_koeln.hs

class Confession {

	String confessionType
	
	static belongsTo = Person
	static hasMany = [persons:Person]
	
	static constraints = {
		confessionType(blank:false)
	}
	
	String toString() {
		return confessionType
	}
}