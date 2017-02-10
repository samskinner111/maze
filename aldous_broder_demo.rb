require 'grid'
require 'aldous_broder'

grid = Grid.new(20,20)
AldousBroder.on(grid)

filename = 'aldous-broder.png'
grid.to_png.save(filename)
puts "saved to #{filename}"