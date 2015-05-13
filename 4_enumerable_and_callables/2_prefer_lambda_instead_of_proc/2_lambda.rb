l = lambda { |arg_one, arg_two|
  p arg_one
  p arg_two
}

l.call(1,2)

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
  bar(&(lambda { return }))
  p [:baz, 2]
end

baz


def foo
  f = {}
  p f.fetch(:foo, &(lambda { |key| return }))
  p "here!"
end

foo
