a = {}

p a[:missing]


p a.fetch(:some_key) { p "this block won't run" }
