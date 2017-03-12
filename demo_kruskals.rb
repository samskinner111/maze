require 'kruskals'
require 'grid'

grid = Grid.new(20, 20)
Kruskals.on(grid)

filename = 'images/kruskals.png'
grid.to_png.save(filename)
`open #{filename}`