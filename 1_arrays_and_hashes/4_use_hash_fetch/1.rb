a = {}

p a[:missing]


a[:some_key] = :value
a.fetch(:some_key) { p "this block doesn't even get evaluated if the key is found" }
