require 'colorful_grid'
require 'binary_tree'

grid = ColorfulGrid.new(25, 25)
BinaryTree.on(grid)

#start = grid[grid.rows / 2, grid.columns / 2]  # starts at center cell
start = grid[24, 0]  # starts at SW corner

grid.distances = start.distances

filename = 'images/colorful.png'
grid.to_png.save(filename)
`open #{filename}`

deadends = grid.deadends
puts "#{deadends.count} dead ends"
