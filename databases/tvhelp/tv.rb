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