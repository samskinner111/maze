require 'recursive_backtracker'
require 'hex_grid'

grid = HexGrid.new(10,10)
RecursiveBacktracker.on(grid)

filename = 'images/hex.png'
grid.to_png.save(filename)
`open #{filename}`