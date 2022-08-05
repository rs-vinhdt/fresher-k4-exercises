class Geometry
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance(point)
    Math.sqrt((x - point.x)**2 + (y - point.y)**2)
  end

  def middle(point)
    mid_x = (x + point.x).to_f / 2
    mid_y = (y + point.y).to_f / 2
    @mid = [mid_x, mid_y].join(', ')
    puts "midpoint: (#{@mid})"
  end

  def self.distance(point_a, point_b)
    Math.sqrt((point_a.x - point_b.x)**2 + (point_a.y - point_b.y)**2)
  end
end

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def triangle_perimeter
    edge_ab = @a.distance(@b)
    edge_ac = @a.distance(@c)
    edge_bc = @b.distance(@c)
    edge_ab + edge_ac + edge_bc
  end

  def triangle_isoscel?
    edge_ab = @a.distance(@b)
    edge_ac = @a.distance(@c)
    edge_bc = @b.distance(@c)
    edge_ab == edge_ac || edge_ab == edge_bc || edge_bc == edge_ac
  end
end

a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 20)
triangle = Triangle.new(a, b, c)
puts triangle.triangle_perimeter
puts triangle.triangle_isoscel?
puts.triangle_isoscel?
puts a.distance(b)
puts Geometry.distance(a, b)
