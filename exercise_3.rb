class Geometry
  attr_reader :x_coor, :y_coor

  def initialize(x_coor, y_coor)
    @x_coor = x_coor
    @y_coor = y_coor
  end

  def distance(point_b)
    Math.sqrt((@x_coor - point_b.x_coor)**2 + (@y_coor - point_b.y_coor)**2)
  end

  def to_s
    "(#{@x_coor};#{@y_coor})"
  end

  class << self
    def distance(point_a, point_b)
      Math.sqrt((point_a.x_coor - point_b.x_coor)**2 + (point_a.y_coor - point_b.y_coor)**2)
    end

    def middle(point_a, point_b)
      Geometry.new((point_a.x_coor + point_b.x_coor) / 2.0, (point_a.y_coor + point_b.y_coor) / 2.0)
    end
  end
end

class Triangle
  def initialize(point_a, point_b, point_c)
    @point_a = point_a
    @point_b = point_b
    @point_c = point_c
  end

  def triangle_perimerter
    Geometry.distance(@point_a, @point_b) + Geometry.distance(@point_b, @point_c) +
      Geometry.distance(@point_a, @point_c)
  end

  def triangle_isoscel?
    Geometry.distance(@point_a, @point_b) == Geometry.distance(@point_a, @point_c) ||
      Geometry.distance(@point_b, @point_a) == Geometry.distance(@point_b, @point_c) ||
      Geometry.distance(@point_c, @point_a) == Geometry.distance(@point_c, @point_b)
  end
end

a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 20)
triangle = Triangle.new(a, b, c)
puts Geometry.distance(b, c)
puts b.distance(c)
center = Geometry.middle(a, b)
puts "center: #{center}"
puts triangle.triangle_perimerter
puts triangle.triangle_isoscel?
