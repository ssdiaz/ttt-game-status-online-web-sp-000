# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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


def won?(board)
#  for each win_combination in WIN_COMBINATIONS
#WIN_COMBINATIONS.each do |win_combination|
  for each win_combination in WIN_COMBINATIONS
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    # win_index_4 = win_combination[3]
    # win_index_5 = win_combination[4]
    # win_index_6 = win_combination[5]
    # win_index_7 = win_combination[6]
    # win_index_8 = win_combination[7]
    # win_index_9 = win_combination[8]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    # position_4 = board[win_index_4] # load the value of the board at win_index_1
    # position_5 = board[win_index_5] # load the value of the board at win_index_2
    # position_6 = board[win_index_6] # load the value of the board at win_index_3
    # position_7 = board[win_index_7] # load the value of the board at win_index_1
    # position_8 = board[win_index_8] # load the value of the board at win_index_2
    # position_9 = board[win_index_9] # load the value of the board at win_index_3

#
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    else
      false
    end
  end

end
