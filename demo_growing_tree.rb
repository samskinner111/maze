require 'growing_tree'
require 'grid'

def save(grid, filename)
  grid.to_png.save(filename)
  `open #{filename}`
end

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| list.sample }
save(grid, "images/growing_tree_random.png")

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| list.last }
save(grid, "images/growing_tree_last.png")

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
save(grid, "images/growing_tree_mix.png")