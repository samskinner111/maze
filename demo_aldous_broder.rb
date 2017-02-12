require 'grid'
require 'aldous_broder'

grid = Grid.new(20,20)
AldousBroder.on(grid)

filename = 'images/aldous-broder.png'
grid.to_png.save(filename)
`open #{filename}`

deadends = grid.deadends
puts "#{deadends.count} dead ends"