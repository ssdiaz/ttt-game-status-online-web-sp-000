# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


# build #WON?
# 8 possible ways to win: 3 horizontal, 3 vertical columns, 2 diagonals
# each win combo should be represented by 3 elements array referring to index won
# board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

#win_top_row = board[0,1,2]

#if board[top_row_win[0]] == "X"
#   && board[top_row_win[1]] == "X"
#   && board[top_row_win[2]] == "X"
#  "X won in the top row"
#end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Column 1 vertical
  [1,4,7], # Column 2 vertical
  [2,5,8], # Column 3 vertical
  [0,4,8], # Right to Left diagonal
  [2,4,6]  # Left to Right diagonal
   ]

# #won? method. should accept board as an agument.
# returns false/nil if there is no winning combo and return winning array
# does not return who won, only how (the index #s)
# iterate the possible win combos to check if the boad has same player toke in
#      each index of a winning combo

def won? (board)

end
