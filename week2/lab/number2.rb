def granny_says(str)
str.each_byte do |byte|
print byte.chr
sleep 0.05
STDOUT.flush
end
puts 
STDOUT.flush
end

while true do
	granny_says ("Got a question for granny? Make sure to")
	granny_says ("input your question in all cap, or else")
	granny_says ("granny can't hear you!\n\n")
	reply = gets.chomp
	if (reply == reply.upcase)
		random = rand(50) +1930
		granny_says("No, not since #{random}!")
		if (reply == "BYE")
		break
		end
	else
		granny_says("HUH?! SPEAK UP SONNY!")
	end
end