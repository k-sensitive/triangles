require('rspec')
require('triangles')

describe('Triangles') do
  describe('#triangle_type') do
    it('returns the type of the triangle') do
      triangle_test = Triangles.new(5,5,5)
      expect(triangle_test.triangle_type()).to(eq('equilateral'))
    end
  end
end
