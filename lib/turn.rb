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
