class RandomMatrix
  def initialize(width,height)
    @matrix = []
    height.times do |i|
      matrix << []
      width.times do
        matrix[i] << rand
      end
    end
  end

  def row(i)
    matrix.dup[i].dup
  end

  private

  attr_reader :matrix
end

m = RandomMatrix.new(3,4)
m.row(1)[0] = 9999999999
p m.row(1)
p m.row(1)
p m.row(1)
p m.row(1)
