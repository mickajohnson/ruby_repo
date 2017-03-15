board = []
puts "Board size?"
board_size = gets.to_i
while board_size > 15 || board_size < 4
  puts "Board needs to be less than 15 and greater than 3"
  puts "Board size?"
  board_size = gets.to_i
end
puts "Ship size?"
ship_size = gets.to_i
while ship_size > board_size || ship_size < 1
  puts "Ship must be smaller than board and at least 1"
  puts "Ship size?"
  ship_size = gets.to_i
end

# Create Board Matrix
board_size.times do
  row = []
  board_size.times {row << "0"}
  board << row
end

# Pretty Print The Board
def print_board board
  board.each { |row| puts row.join(" ") }
end

# Get Random Coords
def random_row board
  return rand(0...board.length)
end
def random_col board
  return rand(0...board[0].length)
end


# Start The Game
puts "Let's play Battleship!"
print_board board


# Store The Ship Coords In A Dictionary
def ship_maker
ship_size.times do
  ship_coords = {}
  ship_coords[ :row ] = random_row board
  ship_coords[ :col ] = random_col board
end

# UNCOMMENT THIS LINE FOR TESTING
puts "#{ship_coords[ :row ]}, #{ship_coords[ :col ]}"


# Main Game Loop -- User Has 4 Tries
(0...4).each do|turn|
    puts "Turn #{turn+1}"

    # Get Coords From User
    guess_coords = {}

    puts "Guess Row:"
    guess_coords[:row] = gets.to_i
    puts"Guess Col:"
    guess_coords[:col] = gets.to_i
    print "\n"

    # Check If Guess Matches The Ship
    if guess_coords[:row] == ship_coords[:row] && guess_coords[:col] == ship_coords[:col]
        puts "Congratulations! You sunk my battleship!"
        break
    else
        # Print Appropriate Message To User
        if (guess_coords[:row] < 0 || guess_coords[:row] > board_size) || (guess_coords[:col] < 0 || guess_coords[:col] > board_size)
            puts "Oops, that's not even in the ocean."
        elsif(board[guess_coords[:row]][guess_coords[:col]] == "X")
            puts "You guessed that one already."
        else
            puts "You missed my battleship!"
            board[guess_coords[:row]][guess_coords[:col]] = "X"
        end
        if turn == 3
            print ("Game Over")
        end
    end
    # Stop User So They Can Read Message
    puts "\nPRESS ANY KEY TO CONTINUE..."
    gets
    print_board(board)
end
