def guess_number
answer = rand(100)
guesses = 5





while  true do 
	if guesses == 0
	puts "sorry you have used all your guesses. The answer was #{answer}"
	
end

	guesses > 0
	if number == answer
	puts "Congratulations."
    elsif guess > answer
      puts "Nope that's not the number, Go lower"
      guesses -= 1
  	elsif guesses < answer
  	puts "Nope that's  not the number. Go higher"
  	guesses -= 1
    end  	
  end
end


