require 'sqlite3'

db = SQLite3::Database.new("tvtracker.db")

create_channels_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS channels(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255)
	)
SQL

create_tvshows_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS tvshows(
	id INTEGER PRIMARY KEY,
	show VARCHAR(255),
	day VARCHAR(255),
	time INT,
	channel_id INT,
	FOREIGN KEY (channel_id) REFERENCES channels(id)
	)
SQL

db.execute(create_channels_cmd)
db.execute(create_tvshows_cmd)

def add_channel(db, channel)
	db.execute("INSERT INTO channels (name) VALUES (?)", [channel])
end

channels = db.execute("SELECT * FROM channels")

if channels.empty?
	add_channel(db, "NBC")
	add_channel(db, "ABC")
end

def add_tvshow (db, show, day, time, channel_id)
	db.execute("INSERT INTO tvshows (show, day, time, channel_id) 
	VALUES (?, ?, ?, ?)", [show, day, time, channel_id])
end

def delete_tvshow(db, show)
	db.execute("DELETE FROM tvshows WHERE show = ?", [show])
end

def find_show_for_today(db, day)
	show_on_today = db.execute("SELECT show, time FROM tvshows WHERE day=?", [day])
	i = 0
	while i < show_on_today.length
		puts "#{show_on_today[i][0]} is on at #{show_on_today[i][1]} on #{day}."
	i +=1
	end	
end

def view_channels_and_tvshows(db)
	all_channels_and_show = db.execute("SELECT tvshows.show, tvshows.day, tvshows.time, channels.name FROM tvshows JOIN channels WHERE tvshows.channel_id = channels.id")
	i = 0
	while i < all_channels_and_show.length
		# p all_channels_and_show[i]
		puts "#{all_channels_and_show[i][0]}: #{all_channels_and_show[i][1]} at #{all_channels_and_show[i][2]} on #{all_channels_and_show[i][3]}"
	i += 1
	end
end

















