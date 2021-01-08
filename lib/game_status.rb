# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Column Left vertical
  [1,4,7], # Column Middle vertical
  [2,5,8], # Column Right vertical
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
 WIN_COMBINATIONS.find do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination # return the win_combination indexes that won.
      else
        false
      end

  end

end


# Full method
# accept a board and return true if every element in the board contains either x or o
def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end


# #draw? method; accets board as argument
def draw? (board)
  # returns true if board not won but full
  # returns false if board is not won and not full
  # reutrns false if board is won
  if won?(board) == false && full?(board) == true
  end
end
