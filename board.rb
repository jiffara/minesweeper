require_relative 'tile'

class Board
  GRID_SIZE = 9
  attr_accessor :grid

  def initialize
    @grid = Array.new(GRID_SIZE) { Array.new(GRID_SIZE) }
    populate
  end

  def populate
    GRID_SIZE.times do |row|
      GRID_SIZE.times do |tile|
        pos = [row, tile]
        self[pos] = Tile.new
      end
    end
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    grid[x][y] = value
  end
end
