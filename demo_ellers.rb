require 'ellers'
require 'grid'

grid = Grid.new(20, 20)
Ellers.on(grid)

filename = "images/ellers.png"
grid.to_png.save(filename)
`open #{filename}`
