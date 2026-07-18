set fh [open rtl.txt r+]
set data [read $fh]
set designs ""
regsub -all "\n" $data " " data
set designs "$data"
close $fh
puts "$designs"
puts "my name is : Roaa Atef"
