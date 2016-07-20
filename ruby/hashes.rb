=begin
- Initialize empty hash
- Create prompts to assign values to hash
	- name, age, number of children, decor theme, wallpaper/paint, budget
- Convert values to proper data type
- Print client info after all values are entered
- Prompt user to see if a key needs to be updated, skip if not needed
- Print client info again
=end

client_details = {}

puts "Enter client's first name."
client_details[:fname] = gets.chomp.capitalize

puts "Enter client's last name."
client_details[:lname] = gets.chomp.capitalize

puts "Enter client's age."
client_details[:age] = gets.chomp

puts "Enter number of children."
client_details[:num_child] = gets.chomp.to_i

puts "Enter decor theme. (Retro, Nautical, Modern, etc."
client_details[:decor_theme] = gets.chomp

puts "Does client prefer wallpaper or paint?"
client_details[:wall_paint] = gets.chomp

puts "Enter client's budget."
client_details[:budget] = gets.chomp.to_f



p client_details




p client_details