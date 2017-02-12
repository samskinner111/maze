require 'grid'
require 'hunt_and_kill'

grid = Grid.new(20,20)
HuntAndKill.on(grid)

filename = 'images/huntandkill.png'
grid.to_png.save(filename)
`open #{filename}`

deadends = grid.deadends
puts "#{deadends.count} dead ends"