package de.uni_koeln.hki.thaller

class Person {
	
	String bio
	java.sql.Date dateOfBirth
	java.sql.Date dateOfDeath
	boolean gender
	
	static hasMany = [names:Name, relations:Relation, confessions:Confession,
	                  locations:Location, works:Work]
	
	static constraints = {
		dateOfBirth(validator:{val, obj ->
		if(obj.dateOfDeath != null)
			if(val?.compareTo(obj.dateOfDeath) >= 0) {
				return false
			}
		})
		
		dateOfDeath(nullable:true)
		bio(maxSize:10000)
	}
	
}