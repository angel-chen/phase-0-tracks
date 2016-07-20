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
client_details[:age] = gets.chomp.to_i

puts "Enter number of children."
client_details[:num_child] = gets.chomp.to_i

puts "Enter decor theme. (Retro, Nautical, Modern, etc.)"
client_details[:decor_theme] = gets.chomp

puts "Does client prefer wallpaper or paint?"
client_details[:wall_paint] = gets.chomp.downcase

	if client_details[:wall_paint]=="wallpaper"
		puts "Enter pattern of wallpaper. (Chevron, Polka Dots, Stars, etc)"
		client_details[:wallpaper] = gets.chomp
	else
		puts "Enter color of wallpaint. (White, Red, Blue, Green, etc)"
		client_details[:paint] = gets.chomp
	end

puts "Enter client's budget."
client_details[:budget] = gets.chomp.to_f

p client_details

puts "Are there any keys that need to be updated? (Yes/No)"
update = gets.chomp.downcase
		
	if update == "yes" || update == "y"
		puts "Enter key"
		key = gets.chomp
		puts "Enter value for key."
		update_value = gets.chomp
		client_details[key.to_sym] = update_value
	else
		puts "All client info has been entered."
	end	

p client_details