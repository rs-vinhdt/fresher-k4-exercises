# frozen_string_literal: true

# class/Geometry
class Geometry
  attr_reader :x_initi, :y_initi

  def initialize(x_initi, y_initi)
    @x_initi = x_initi
    @y_initi = y_initi
  end

  def distance(point)
    Math.sqrt((@x_initi - point.x_initi)**2 + (@y_initi - point.y_initi)**2)
  end

  def to_s
    "(#{@x_initi};#{@y_initi})"
  end

  class << self
    def distance(point_a, point_b)
      Math.sqrt((point_a.x_initi - point_b.x_initi)**2 + (point_a.y_initi - point_b.y_initi)**2)
    end

    def middle(point_a, point_b)
      Geometry.new((point_a.x_initi + point_b.x_initi) / 2.0, (point_a.y_initi + point_b.y_initi) / 2.0)
    end
  end
end
# frozen_string_literal: true

# class/Triangle
class Triangle
  attr_accessor :a_initi, :b_initi, :c_initi

  def initialize(a_initi, b_initi, c_initi)
    @a_initi = a_initi
    @b_initi = b_initi
    @c_initi = c_initi
  end

  def triangle_perimerter
    Geometry.distance(@a_initi, @b_initi) + Geometry.distance(@b_initi, @c_initi) +
      Geometry.distance(@a_initi, @c_initi)
  end

  def triangle_isoscel?
    Geometry.distance(@a_initi, @b_initi) == Geometry.distance(@a_initi, @c_initi) ||
      Geometry.distance(@a_initi, @b_initi) == Geometry.distance(@b_initi, @c_initi) ||
      Geometry.distance(@a_initi, @c_initi) == Geometry.distance(@b_initi, @c_initi)
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
