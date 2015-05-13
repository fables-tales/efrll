p = Proc.new { |arg_one, arg_two|
  p arg_one
  p arg_two
}

p.call(1,2)

def foo(&blk)
  p [:foo, 1]
  blk.call
  p [:foo, 2]
end

def bar(&blk)
  p [:bar, 1]
  foo(&blk)
  p [:bar, 2]
end

def baz
  p [:baz, 1]
  bar { return }
  p [:baz, 2]
end

baz


def foo
  f = {}
  p f.fetch(:foo) { |key| return }
  p "here!"
end

foo
