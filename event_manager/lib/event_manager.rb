#lines = File.readlines "event_attendees.csv"
#lines.each do |line|
#  puts line
#end
require 'csv'
contents = CSV.open "event_attendees.csv", headers: true,header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end
