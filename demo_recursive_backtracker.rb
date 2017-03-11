require 'grid'
require 'recursive_backtracker'

grid = Grid.new(20,20)
RecursiveBacktracker.on(grid)
grid.braid(1.0)

filename = 'images/recursive.png'
grid.to_png(inset: 0.1).save(filename)
`open #{filename}`

deadends = grid.deadends
puts "#{deadends.count} dead ends"