require("rspec")
require("triangle")

describe(Triangle) do
  describe("#triangle?") do
    it("takes input and tests whether something is a triangle") do
      new_triangle = Triangle.new([4,4,4])
      expect(new_triangle.triangle?()).to(eq(true))
    end
    it("takes input and tests whether something is a triangle") do
      new_triangle = Triangle.new([8,2,2])
      expect(new_triangle.triangle?()).to(eq(false))
    end
  end
end
