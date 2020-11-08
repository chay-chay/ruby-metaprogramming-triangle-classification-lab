class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
# class Triangle
#   # write code here
#   attr_accessor :side1, :side2, :side3
#   def initialize(side1, side2, side3)
#     @side1 = side1
#     @side2 = side2
#     @side3 = side3
#   end
#   def kind
#     if side1 = side2 && side2 == side3 
#       :equilateral
#     elsif side1 == side2 || side2 == side3 ||side1 == side3
#       :isosceles
#     else 
#       :scalene
#     end
#   end
#   def def validate_triangle
#     real_triangle = [(side1 + side2 > side3), (side2 + side3 > side1), (side1 + side3 > side2)]
#     [side1, side2, side3].each { |side|
#     real_triangle < false if side <= 0}
#     raise TriangleError if real_triangle.include?(false)
#   end
#   class TriangleError < StandardError
#   end
# end
