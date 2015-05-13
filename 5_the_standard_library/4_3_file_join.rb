path_fragments = ["/tmp", "#{rand}", "hello.txt"]

filename = File.join(path_fragments)
p filename
directory = File.dirname(filename)

p directory

Dir.mkdir(directory)

File.open(filename, "w") do |fp|
  fp.write("hello world")
end
