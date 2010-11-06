package query.util

import groovy.sql.Sql
import de.uni_koeln.hs.*

class ResultObject {
	
	def dataSource
	
	ResultObject(dataSource) {
		this.dataSource = dataSource
	}
	
	def search = { q ->
		
		def list = []
		def person = [:]
		
		q.each { eachSearchString ->
			
			def name = Name.withCriteria {
				or {
					like('lastName', "%"+eachSearchString+"%")
					like('firstName', "%"+eachSearchString+"%")
				}
			}
			
			def location = Location.withCriteria {
				or {
					like('country', "%"+eachSearchString+"%")
					like('city', "%"+eachSearchString+"%")
				}
			}
			
			def confession = Confession.withCriteria {
				like('confessionType', "%"+eachSearchString+"%")
			}
			
			def work = Work.withCriteria {
				or {
					like('workTitle', "%"+eachSearchString+"%")
					like('subtitle', "%"+eachSearchString+"%")
				}
			}
			
			if(name != []) {
				def n = retrievePersonByName(name)
				if(n != []) {
					list.addAll(n)
					n.each {person.put(it, ++person.get(it, 0))}
				}
			}
			if(location != []) {
				def l = retrievePersonByLocation(location)
				if(l != []) {
					list.addAll(l)
					l.each {person.put(it, ++person.get(it, 0))}
				}
			}
			if(confession != []) {
				def c = retrievePersonByConfession(confession)
				if(c != []) {
					list.addAll(c)
					c.each {person.put(it, ++person.get(it, 0))}
				}
			}
			if(work != []) {
				def w = retrievePersonByWork(work)
				if(w != []) {
					list.addAll(w)
					w.each {person.put(it, ++person.get(it, 0))}
				}
			}
		}
		return person
	}
	
	
	def retrievePersonByName =  { name ->
		def db = new Sql(dataSource)
		def listOfPersonID = []
		name.each {
			def rows = db.rows("SELECT person_id FROM name WHERE id = " + it.id)
			rows.each { listOfPersonID.add(it.getProperty("person_id")) }
		}
		return listOfPersonID
	}
	
	def retrievePersonByLocation = { location ->
		def db = new Sql(dataSource)
		def listOfPersonID = []
		location.each {
			def rows = db.rows("SELECT person_id FROM person_locations WHERE location_id = " + it.id)
			rows.each { listOfPersonID.add(it.getProperty("person_id")) }
		}
		return listOfPersonID
	}
	
	def retrievePersonByConfession = { confession ->
		def db = new Sql(dataSource)
		def listOfPersonID = []
		confession.each {
			def rows = db.rows("SELECT person_id FROM person_confessions WHERE confession_id = " + it.id)
			rows.each { listOfPersonID.add(it.getProperty("person_id")) }
		}
		return listOfPersonID
	}
	
	def retrievePersonByWork = { work ->
		def db = new Sql(dataSource)
		def listOfPersonID = []
		work.each {
			def rows = db.rows("SELECT person_id FROM person_works WHERE work_id = " + it.id)
			rows.each { listOfPersonID.add(it.getProperty("person_id")) }
		}
		return listOfPersonID
	}
	
}
