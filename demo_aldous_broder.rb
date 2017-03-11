require 'grid'
require 'aldous_broder'

grid = Grid.new(20,20)
AldousBroder.on(grid)

filename = 'images/aldous-broder.png'
grid.to_png(inset: 0.1).save(filename)
`open #{filename}`

deadends = grid.deadends
puts "#{deadends.count} dead ends"