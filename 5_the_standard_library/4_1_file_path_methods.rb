
this_file = __FILE__

p this_file
p File.absolute_path(__FILE__)

$: << File.dirname(File.absolute_path(__FILE__))

require "new_file"

p Foo.new
