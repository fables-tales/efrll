class ValidatesArrays
  def initialize(array)
    @array = array
  end

  def valid?
    array.any? {|x| x == 1}
  end

  private

  def array
    #specifying default value
    @array || []
  end
end

v = ValidatesArrays.new(nil)
p v.valid?
