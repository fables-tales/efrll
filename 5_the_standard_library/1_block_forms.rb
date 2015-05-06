f = File.open("/tmp/file.txt", "w")
f.write("bees")
f = nil


f = File.open("/tmp/file.txt")
#OMG FILE is EMPTY
p f.read

f = File.new("/tmp/file3.txt", "w")
f.write("bees")
f = nil


f = File.open("/tmp/file3.txt")
#OMG FILE is EMPTY
p f.read

File.open("/tmp/file2.txt", "w") do |fp|
  fp.write("bees")
end

f = File.open("/tmp/file2.txt")
p f.read
