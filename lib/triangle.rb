class Triangle
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

def kind
  test_triangle
    if side_a == side_b && side_b == side_c && side_c == side_a
      :equilateral
    elsif
      side_a == side_b || side_b == side_c || side_c == side_a
      :isosceles
    elsif
      side_a != side_b && side_b != side_c && side_c != side_a
      :scalene
    end
end


  def test_triangle
    side_arr =[side_a,side_b, side_c]
      side_arr.each do |side|
        if side <= 0
          raise TriangleError
        end
        side_sort = side_arr.sort
        if side_sort[0] + side_sort[1] <= side_sort[2]
          raise TriangleError
        end
      end
  end


  class TriangleError < StandardError
    "This is not a triangle."
  end

end
