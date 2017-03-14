require 'recursive_division'
require 'grid'

grid = Grid.new(20, 20)
RecursiveDivision.on(grid)

filename = "images/recursive_division.png"
grid.to_png.save(filename)
`open #{filename}`