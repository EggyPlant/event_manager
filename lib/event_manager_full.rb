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

def clean_zipcode(zipcode)
  # if zipcode.nil?
  #   zipcode = "00000"
  # elsif zipcode.length < 5
  #   zipcode = zipcode.rjust(5, '0')
  # elsif zipcode.length > 5
  #   zipcode = zipcode[0..4]
  # else
  #   zipcode
  # end
  zipcode.to_s.rjust(5,"0")[0..4]
end


contents = CSV.open(
  '../event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])

  # if the zipcode is exactly 5 digits, assume that it is ok
  # if the zipcode is more than 5 digits, truncate it to the first 5 digits
  # if the zipcode is less than 5 digits, add zeros to the front until it becomes 5 digits


  
  puts "#{name} #{zipcode}"
end
