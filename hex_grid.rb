require 'grid'
require 'hex_cell'

class HexGrid < Grid 
  def prepare_grid
    Array.new(rows) do |row|
      Array.new(columns) do |column|
        HexCell.new(row, column)
      end
    end
  end

  def configure_cells
    each_cell do |cell|
      row, col = cell.row, cell.column

      if col.even?
        north_diagonal = row-1
        south_diagonal = row
      else
        north_diagonal = row
        south_diagonal = row+1
      end

      cell.northwest = self[north_diagonal, col-1]
      cell.north = self[row-1, col]
      cell.northeast = self[north_diagonal, col+1]
      cell.southwest = self[south_diagonal, col-1]
      cell.south = self[row+1, col]
      cell.southeast = self[south_diagonal, col+1]
    end
  end
end