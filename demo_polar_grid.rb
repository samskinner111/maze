require 'polar_grid'

grid = PolarGrid.new(8, 8)

filename = "images/polar.png"
grid.to_png.save(filename)
`open #{filename}`