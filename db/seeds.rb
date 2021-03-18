# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# For full tutorial: https://gist.github.com/arjunvenkat/1115bc41bf395a162084

require 'csv'

# Read in a csv file called toolkit_database.csv under lib/seeds directory
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Toolkit.csv'))
# Parse the csv
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# Looping through the parsed data and create a database object from each row
csv.each do |row|
   t = Toolkit.new
   t.name = row['name']
   t.url = row['url']
   t.content = row['content']
   t.save
end
# Print the confirm statement
# puts "There are now #{Toolkit.count} rows in the Toolkit table."

# The current toolkit_database csv file does not contain all information from formal database.
