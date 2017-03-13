require 'prims'
require 'grid'

grid = Grid.new(20, 20)
SimplifiedPrims.on(grid)

filename = 'images/simple_prims.png'
grid.to_png.save(filename)
`open #{filename}`


grid = Grid.new(20, 20)
TruePrims.on(grid)

filename = 'images/true_prims.png'
grid.to_png.save(filename)
`open #{filename}`