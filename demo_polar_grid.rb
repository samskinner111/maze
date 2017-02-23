require 'polar_grid'
require 'recursive_backtracker'

grid = PolarGrid.new(20)
RecursiveBacktracker.on(grid)

filename = "images/polar.png"
grid.to_png.save(filename)
`open #{filename}`