f = File.open("/tmp/file.txt", "w")
f.write("bees")
f = nil

f = File.open("/tmp/file.txt")
p f.read

File.open("/tmp/file2.txt", "w") do |fp|
  fp.write("bees")
end

f = File.open("/tmp/file2.txt")
p f.read

File.open("/tmp/file2.txt", "r") do |fp|
  p fp.read
end
