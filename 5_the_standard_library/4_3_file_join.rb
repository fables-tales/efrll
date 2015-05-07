path_fragments = ["/tmp", "#{rand}", "hello.txt"]

filename = File.join(path_fragments)
directory = File.dirname(filename)

Dir.mkdir(directory)

File.open(filename, "w") do |fp|
  fp.write("hello world")
end
