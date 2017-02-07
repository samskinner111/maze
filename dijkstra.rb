require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5,5)
BinaryTree.on(grid)

start = grid[0,0]
distances = start.distances

grid.distances = distances
puts grid

puts "path from NW corner to SW corner"
grid.distances = distances.path_to(grid[grid.rows-1, 0])
pusts grid.to_s