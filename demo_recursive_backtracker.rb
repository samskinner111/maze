require 'grid'
require 'recursive_backtracker'

grid = Grid.new(20,20)
RecursiveBacktracker.on(grid)

filename = 'images/recursive.png'
grid.to_png.save(filename)
`open #{filename}`

deadends = grid.deadends
puts "#{deadends.count} dead ends"