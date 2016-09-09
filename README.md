# Events Restful API

First of all, here's the link to the [db schema](https://drive.google.com/open?id=0B0ILE9WkxqqYV2xUdzdSU0JwQU0). This is how 
the database looks, use it as a reference to know where you should save the data.

Ok, first things first. We need to have the enviroment ready so, put on your running shoes and ...
#Requirements:
	* Ruby version: 2.2.4
	* Rails version: 5.0.0
	* Postgressql version : 9.5

##Steps
	1. Clone this repo with ``` git clone ____``` into any directory or Desktop.

	2. Create a DB named "eventsapidb", if you want a different one check and edit the "[database.yml](https://github.com/JEpifanio90/eventsRestfulApi/blob/master/config/database.yml)" file.

		1. In this file you have different sections like:
			* "default"
			* "test"
			* "Development"
			* "Production"

		2. All of them have a keyword "database" in which you specify the name of your database.

	3. Open a terminal or a command promt 'CMD' on your laptop and ```cd``` into the root of the project.

	4. Run the following commands on your terminal:

		1. rake db:migrate -->To run the [migrations](http://edgeguides.rubyonrails.org/active_record_migrations.html) (Click on the link for more info) and create the tables into the DB (JUST ONCE)

		2. rake db:seed   -->To populate the DB with some initial values. Check the [seeds.rb](https://github.com/JEpifanio90/eventsRestfulApi/blob/master/db/seeds.rb) file to create your own seeds.

			* rake db:migrate db:seed  -->One line command.

		3. [rake routes](http://guides.rubyonrails.org/routing.html)-->To see all the available routes.


	5. To run the API write "rails s" and it will open a tab on your browser on the localhost:3000. To stop it use "Ctrl+C".


###That's it. lol

This is suppossed to be a Restful Api, that being said, it holds no session and uses tokens for authentification. Check out the default user created on the [seeds.rb](https://github.com/JEpifanio90/eventsRestfulApi/blob/master/db/seeds.rb) file.

		
	
