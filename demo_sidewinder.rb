require 'grid'
require 'sidewinder'

grid = Grid.new(15,15)
Sidewinder.on(grid)

puts grid

img = grid.to_png
img.save "images/sw-maze.png"

deadends = grid.deadends
puts "#{deadends.count} dead ends"