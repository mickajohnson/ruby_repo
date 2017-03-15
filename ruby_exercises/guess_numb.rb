def guess_number guess
  number = 25
  if number == guess
    puts "You got it"
  elsif number > guess
    puts "Guess was too low"
  else
    puts "Guess was too high"
  end
end

guess_number 24
guess_number 25
guess_number 26
