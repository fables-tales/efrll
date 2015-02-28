class Sample
  FOOS = [1,2,3]

  def does_something_with_foos
    FOOS.select!{|x| x % 2 == 0}
  end

  def foos
    [1,2,3]
  end
end

c = Sample.new
p c.does_something_with_foos

p Sample.new.foos
