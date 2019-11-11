def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  count = 0  
  while count <= board.length 
    count += 1
    if valid_move?(board, index)
      turn(board)
      break
    else
      puts "Please enter 1-9:"
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     return false
  elsif board[index] == "X" || board[index] == "O"
     return true
  end
end