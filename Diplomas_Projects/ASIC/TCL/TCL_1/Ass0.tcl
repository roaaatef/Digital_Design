puts "**** Logical Operations****"
#1st req
set a 5
#2nd req
set b -1
#3rd req
set c 0
#4th req
set var0 [expr $a && $c]
#5th req
set var1 [expr $a || $b]
#6th req
puts " the value of a&&c is :$var0"
#7th req
puts "the value of a||b is :$var1"
