
while true do
	puts ("Got a question for granny? Make sure to")
	granny_says ("input your question in all cap, or else")
	granny_says ("granny can't hear you!\n\n")
	reply = gets.chomp
	if (reply == reply.upcase)
		random = rand(50) +1930
		if (reply == "BYE BYE BYE")
		break
		end
		puts("No, not since #{random}!")
		if (reply == "BYE BYE")
		puts ("Granny wants to speak to you!")
		end
	else
		puts ("HUH?! SPEAK UP SONNY!")
	end
end