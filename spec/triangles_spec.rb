require('rspec')
require('triangles')

describe('Triangles') do
  describe('#triangle_type') do

    it('identifies a non-triangle') do
      triangle_test = Triangles.new(3, 8, 3)
      expect(triangle_test.triangle_type()).to(eq('not a triangle'))
    end

    it('identifies an equilateral triangle') do
      triangle_test = Triangles.new(5,5,5)
      expect(triangle_test.triangle_type()).to(eq('equilateral'))
    end

    it('identifies an isosceles triangle') do
      triangle_test = Triangles.new(4,7,7)
      expect(triangle_test.triangle_type()).to(eq('isosceles'))
    end
  end
end
