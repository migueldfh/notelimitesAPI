# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#SEEDING INDEPENDENT TABLES
City.create!(name:'Monterrey', lat:25.6871038, lng:-100.3265797, state:'Nuevo León', country:'México')
City.create!(name:'CDMX', lat:19.3910039, lng:-99.283697, state:'Ciudad De México', country:'México')
City.create!(name:'Guadalajara', lat:20.6738687, lng:-103.3704327, state:'Jalisco', country:'México')
City.create!(name:'San Antonio', lat:29.4816561, lng:-98.6544883, state:'Texas', country:'USA')

AccessType.create!(accessType:'General')
AccessType.create!(accessType:'Paid')
AccessType.create!(accessType:'V.I.P')

EventType.create!(eventType:'Festival')
EventType.create!(eventType:'Electronica')
EventType.create!(eventType:'Reggae')
#//////////////////////////

#SEEDING DEPENDING TABLES

city = City.where(name:'Monterrey').first()
Place.create!(name:'Cintermex', lat: 25.6781749, lng: -100.2901244, cityID: city.id)

city = City.where(name:'CDMX').first()
Place.create!(name:'Foro Sol', lat: 19.4050858, lng: -99.097833, cityID: city.id)

city = City.where(name:'Guadalajara').first()
Place.create!(name:'Teatro Diana', lat: 20.6654757, lng: -103.3493864, cityID: city.id)

city = City.where(name:'San Antonio').first()
Place.create!(name:'AT&T Center', lat: 29.4273245, lng: -98.4401339, cityID: city.id)


#Create a 'default' user with a token (assuming that is the auth token of facebook)
User.create!(name:'test', email:'test@gmail.com',lat:17.6271288, lng:106.6283501, password:'1234',
             password_confirmation:'1234', token:'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA')

place = Place.where(name:'Cintermex').first()
accessType = AccessType.where(accessType:'General').first()
eventType = EventType.where(eventType: 'Festival').first()

Event.create!(eventName:'Hellow Festival', description: 'BlA BLA BLA BLA BLA BLA BLA BLA, get wasted',
              init_date: Date.today, end_date: Date.today + 1.month, ranking: 3.20, attendings:0, micrositeID: 10232,
              placeID: place.id, accessTypeID:accessType.id, eventTypeID: eventType.id)

event = Event.first()

EventUrl.create!(url:'http://hellowfestival.com/?gclid=Cj0KEQjwztG8BRCJgseTvZLctr8BEiQAA_kBD5RXb5f6eP0ry4duzUY_RZEFG3tNMp-qyutMV7PTDg4aAhH18P8HAQ',
                 eventID: event.id)

Artist.create!(name:'SomeGuy', hits: 10, eventID: event.id)
Artist.create!(name:'Some other guy', hits: 8, eventID: event.id)
Artist.create!(name:'This guy', hits: 13, eventID: event.id)
Artist.create!(name:'Kayne West or whatever', hits: -32, eventID: event.id)

Image.create!(image:'http://hellowfestival.com/images/fb-share4.jpg',ownerID: event.id)

#Where's my latte???!
user = User.first()
Image.create!(image:'http://i.makeagif.com/media/11-19-2015/0-Dtnq.gif', ownerID: user.id)

AttendingList.create!(userID: user.id, eventID: event.id)

event.attendings += 1
event.save!()
#/////////////////////////
