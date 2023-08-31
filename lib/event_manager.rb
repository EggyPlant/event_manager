require 'csv'
puts 'Event Manager Initialized!'

# contents = File.read('../event_attendees.csv')
# puts contents

puts ""
puts ""

# lines = File.readlines('../event_attendees.csv')
# # lines.each do |line|
# #   columns = line.split(",")
# #   name = columns[2]
# #   p name
# # end

# # lines.each do |line|
# #   next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
# #   columns = line.split(",")
# #   name = columns[2]
# #   puts name
# # end

# # row_index = 0
# # lines.each do |line|
# #   row_index = row_index + 1
# #   next if row_index == 1
# #   columns = line.split(",")
# #   name = columns[2]
# #   puts name
# # end

# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# contents = CSV.open('../event_attendees.csv', headers: true)
# contents.each do |row|
#   name = row[2]
#   puts name
# end

contents = CSV.open(
  '../event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end
