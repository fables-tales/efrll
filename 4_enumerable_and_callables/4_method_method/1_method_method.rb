class ReallyComplexStringTransform
  def transform(string)
    a = string.upcase
    a += "ifojoweiqfjqwoiefjoq"
    a[4] = "f"
    a
  end
end


strings = ["single", "page", "web", "apps", "don't", "work"]

t = ReallyComplexStringTransform.new.method(:transform)

strings.map(&t).each do |new_string|
#  p new_string
end

















class MyHttpLibrary
  def http_method
    "GET"
  end

  def foo

  end
end

m = MyHttpLibrary.new.method(:foo)
















#t1 = ReallyComplexStringTransform.new.method(:transform).call("String")
#t2 = ReallyComplexStringTransform.new.send(:transform, "String")
#
#p t1 == t2










