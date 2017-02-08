require 'colorful_grid'
require 'binary_tree'

grid = ColorfulGrid.new(25, 25)
BinaryTree.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

# puts grid
# puts grid.class.class

filename = 'colorful.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
