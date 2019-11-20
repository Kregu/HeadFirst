# Get My Number Game
puts "Welcome to 'Get My Number!'"
print "Enter your name: "
player_name = gets.chomp.capitalize
puts "Hello, #{player_name}! I've got a random number between 1 and 100.", "Can you guess it?"

total_guesses = 8
guess_number = rand (1..100)
guessed_it = false

total_guesses.times do |guessing_made|
  puts "\nYou have #{total_guesses - guessing_made} guesses"
  print "Enter your guess: "
  player_guess = gets.to_i

  if player_guess < guess_number
    puts "Your guess was LOW"
  elsif player_guess > guess_number
    puts "Your guess was HIGH"
  else player_guess == guess_number
    guessed_it = true
    puts "Good job #{player_name}! You guessed my number in #{guessing_made+1} guesses!"
    break
  end
end

unless guessed_it
  puts "\nSorry. You didn't get my number. (It  was  #{guess_number}.)"
end