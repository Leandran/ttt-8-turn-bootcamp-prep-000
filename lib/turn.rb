def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
    return true
  else
    return false
  end
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end

def move(board, index)
end

def input_to_index(user_input)
  input = user_input.to_i
  input -= 1
  return input
end


def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
   board[index] == "X" || board[index] == "O"
   return true
 end
end

def move(board, index, token = "X")
  board[index.to_i] = token
end
