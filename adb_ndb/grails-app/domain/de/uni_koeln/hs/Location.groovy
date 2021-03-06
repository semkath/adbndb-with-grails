package de.uni_koeln.hs

class Location {
	
	Integer id
	
	String city
	String country
	float latitude 
	float longitude
	
	static belongsTo = Person
	static hasMany = [persons:Person]
	
	static mapping = {
		persons joinTable: [name: "person_locations", key: "location_id"]
	}
	
	static constraints = {
		longitude(blank:true)
		latitude(blank:true)
		city(blank:false)
		country(blank:false)
	}
	
	
	@Override
	String toString() {
		return "${city}, (${country})"
	}
	
}
