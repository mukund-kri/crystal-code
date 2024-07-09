require "db"
require "sqlite3"

DB.open "sqlite3://db.sqlite3" do |db|
  db.exec "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT)"
  db.exec "INSERT INTO users (name) VALUES ('Alice')"
  db.exec "INSERT INTO users (name) VALUES ('Bob')"

  db.query "SELECT * FROM users" do |rs|
    rs.each do
      id = rs.read(Int32)
      name = rs.read(String)

      puts "#{id}: #{name}"
    end
  end
end
