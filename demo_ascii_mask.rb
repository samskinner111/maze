require 'mask'
require 'masked_grid'
require 'recursive_backtracker'

abort "please specify a text file to use as a template" if ARGV.empty?
mask = Mask.from_txt(ARGV.first)
grid = MaskedGrid.new(mask)
RecursiveBacktracker.on(grid)

filename = 'images/mask1.png'
grid.to_png.save(filename)
`open #{filename}`