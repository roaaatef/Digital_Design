puts "****Assignment 2.0****"
set cities {cairo alexandria demietta dakahlia faiyum sohag aswan}
set Cities_New {}
foreach loop $cities {
set y [string toupper [string index $loop 0]]
set len [string  length $loop ]
set ran [expr $len-1]
 append y [string range  $loop 1 $ran]
 lappend Cities_New $y
}
puts " the new list is : $Cities_New"
puts " my name is : Roaa Atef"
