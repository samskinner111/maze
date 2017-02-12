require 'grid'
require 'binary_tree'

grid = Grid.new(15,12)
BinaryTree.on(grid)

puts grid

deadends = grid.deadends
puts "#{deadends.count} dead ends"