class Triangle
  define_method(:initialize) do |side_array|
    @triangle = side_array.sort!()
  end
  define_method(:triangle?) do
    @triangle[0].to_i + @triangle[1].to_i >= @triangle[2].to_i ? true : false
  end
  define_method(:triangle_type) do
    if self.triangle?
      if (@triangle[0] == @triangle[1]) && (@triangle[1] == @triangle[2])
        "Equilateral"
      elsif (@triangle[1] == @triangle[2]) || (@triangle[0] == @triangle[1])
        "Isosceles"
      else
        "Scalene"
      end
    end
  end
end
