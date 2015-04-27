class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle_type) do
    side_array = [@side1, @side2, @side3]
    side_array.sort!()
    if(side_array[0] + side_array[1] <= side_array[2])
      return "not a triangle"
    elsif (side_array[0] == side_array[1] && side_array[1] == side_array[2])
      return "equilateral"
    elsif(side_array[0] == side_array[1] || side_array[1] == side_array[2])
      return "isosceles"
    else
      return "scalene"
    end
  end
end
