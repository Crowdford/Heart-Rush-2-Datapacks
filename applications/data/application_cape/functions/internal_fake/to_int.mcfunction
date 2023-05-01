data modify storage s_str:io digit set from storage s_str:io out.time[0]
execute if data storage s_str:io {digit:"0"} run scoreboard players set digit unix 0
execute if data storage s_str:io {digit:"1"} run scoreboard players set digit unix 1
execute if data storage s_str:io {digit:"2"} run scoreboard players set digit unix 2
execute if data storage s_str:io {digit:"3"} run scoreboard players set digit unix 3
execute if data storage s_str:io {digit:"4"} run scoreboard players set digit unix 4
execute if data storage s_str:io {digit:"5"} run scoreboard players set digit unix 5
execute if data storage s_str:io {digit:"6"} run scoreboard players set digit unix 6
execute if data storage s_str:io {digit:"7"} run scoreboard players set digit unix 7
execute if data storage s_str:io {digit:"8"} run scoreboard players set digit unix 8
execute if data storage s_str:io {digit:"9"} run scoreboard players set digit unix 9
scoreboard players operation time unix *= 10 unix
scoreboard players operation time unix += digit unix
data remove storage s_str:io out.time[0]
execute if data storage s_str:io out.time[0] run function application_cape:internal_fake/to_int