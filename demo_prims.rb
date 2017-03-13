require 'prims'
require 'grid'

grid = Grid.new(20, 20)
SimplifiedPrims.on(grid)

filename = 'images/prims.png'
grid.to_png.save(filename)
`open #{filename}`