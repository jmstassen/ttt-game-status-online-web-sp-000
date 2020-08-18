# Helper Method
def position_taken? (board, index)
  index2 = index.to_i
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

#for each win_combination in WIN_COMBINATIONS
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3]
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board,position_1) == true
      return win_combination
    end
  end # return the win_combination indexes that won.
  return false
end
