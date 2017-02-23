require 'recursive_backtracker'
require 'hex_grid'

grid = HexGrid.new(20,20)
RecursiveBacktracker.on(grid)

filename = 'images/hex.png'
grid.to_png.save(filename)
`open #{filename}`