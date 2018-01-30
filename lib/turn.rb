# first let's define #display_board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# now define #valid_move?
board = []
index = 0
def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board,index) == false
    return true
  else
    return false
  end
end
# and why not add the definition for #position_taken?
def position_taken?(board, index)
  board[index] != " "
  board[index] != ""
  board[index] == "nil"
  board[index] == "X" || board[index] == "O"
end
# and then convert user's input to a location on board
def input_to_index(input)
  input.to_i - 1
end
# and then define #move
def move(board, index, user_marker = 'X')
  board[index.to_i] = user_marker
end
