p Object === []
p Object === {}

class MyClass
end


m = MyClass.new
p MyClass === m
p MyClass === Object.new

p /ab/ === "babble"
p /ab/ === "catfish"

p (1...8) === 3
p (1...8) === 0
p (1...8) === 19
