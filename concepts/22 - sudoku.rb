sudoku = [
  [5, 3, 4, 6, 7, 8, 9, 1, 2],
  [6, 7, 2, 1, 9, 5, 3, 4, 8],
  [1, 9, 8, 3, 4, 2, 5, 6, 7],
  [8, 5, 9, 7, 6, 1, 4, 2, 3],
  [4, 2, 6, 8, 5, 3, 7, 9, 1],
  [7, 1, 3, 9, 2, 4, 8, 5, 6],
  [9, 6, 1, 5, 3, 7, 2, 8, 4],
  [2, 8, 7, 4, 1, 9, 6, 3, 5],
  [3, 4, 5, 2, 8, 6, 1, 7, 9]
]
def checkBlocks(sudoku, i, j)
    max_i = i + 3
    max_j = j + 3
    arr = []
    while i < max_i do
        jj = j
        while jj < max_j do
            arr << sudoku[i][jj]
            jj += 1
        end
        i += 1
    end
    1.upto(9) do |i|
        return false unless arr.include?(i)
    end
    return true
end
def checkSudoku(sudoku)
    sudoku.each_with_index do |arr,index|
        1.upto(9) do |i|
            return "invalid row #{index + 1}" unless arr.include?(i)
        end
    end


    column = 0
    row = 0
    while column < 9 do
        arr = []
        row = 0
        while row < 9 do
            arr << sudoku[row][column]
            row +=1
        end
        1.upto(9) do |i|
            return "invalid column #{column} #{i}" unless arr.include?(i)
        end
        column += 1
    end

    return "invalid" unless checkBlocks(sudoku,0,0)
    return "invalid" unless checkBlocks(sudoku,0,3)
    return "invalid" unless checkBlocks(sudoku,0,6)
    return "invalid" unless checkBlocks(sudoku,0,6)
    return "invalid" unless checkBlocks(sudoku,3,0)
    return "invalid" unless checkBlocks(sudoku,3,3)
    return "invalid" unless checkBlocks(sudoku,3,6)
    return "invalid" unless checkBlocks(sudoku,6,0)
    return "invalid" unless checkBlocks(sudoku,6,3)
    return "invalid" unless checkBlocks(sudoku,6,6)

    return "valid"
end

puts checkSudoku(sudoku)