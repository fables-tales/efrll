require "date"

d = Date.today
dt = DateTime.now
t = Time.now

p d.to_s
p dt.to_s
p t.to_s

d = Date.new(2015, 04, 03)

p d

p t.zone
p t.dst?
