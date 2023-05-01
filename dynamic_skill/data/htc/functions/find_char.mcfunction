data modify storage text:int cb set from storage text:int bits[0]
data remove storage text:int bits[0]

#bit specific functions
execute if data storage text:int {cb:0b} run function htc:0
execute if data storage text:int {cb:1b} run function htc:1

#loop
execute unless data storage text:int {cb:"found"} if data storage text:int bits[0] run function htc:find_char