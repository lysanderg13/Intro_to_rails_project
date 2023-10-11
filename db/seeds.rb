require "csv"

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='crews';")

# open the crews.csv
file_one = Rails.root.join("db/crews.csv")

puts "Loading Crews from the CSV file: #{file_one}"

csv_data_one = File.read(file_one)

crews = CSV.parse(csv_data_one, headers: true, encoding: "utf-8")

# open the fruits.csv
file_two = Rails.root.join("db/fruits.csv")

puts "Loading Fruits from the CSV file: #{file_two}"

csv_data_two = File.read(file_two)

fruits = CSV.parse(csv_data_two, headers: true, encoding: "utf-8")

# open the characters.csv
file_three = Rails.root.join("db/characters.csv")

puts "Loading Characters from the CSV File: #{file_three}"

csv_data_three = File.read(file_three)

characters = CSV.parse(csv_data_three, headers: true, encoding: "utf-8")
