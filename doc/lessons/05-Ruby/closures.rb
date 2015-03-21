#!/usr/bin/env ruby
b = 10

f1 = lambda {|a| 
	print a
}

f = ->(a) {  print a }

f2 = ->(a,b) do
  print a,b
end
 
f1.call(6)
f.call(5)

f2.(3,4)
f2[3,4]


