data modify storage simplify:main char set from storage simplify:main in[0]
execute if data storage simplify:main in[1] run data modify storage simplify:main char2 set from storage simplify:main in[1]
execute unless data storage simplify:main in[1] run data modify storage simplify:main char2 set value "#"
execute if data storage simplify:main out[-1] run data modify storage simplify:main char3 set from storage simplify:main out[-1]
execute unless data storage simplify:main out[-1] run data modify storage simplify:main char3 set value "#"
data remove storage simplify:main in[0]
execute unless data storage simplify:main {char2:"0"} unless data storage simplify:main {char2:"1"} unless data storage simplify:main {char2:"2"} unless data storage simplify:main {char2:"3"} unless data storage simplify:main {char2:"4"} unless data storage simplify:main {char2:"5"} unless data storage simplify:main {char2:"6"} unless data storage simplify:main {char2:"7"} unless data storage simplify:main {char2:"8"} unless data storage simplify:main {char2:"9"} unless data storage simplify:main {char3:"0"} unless data storage simplify:main {char3:"1"} unless data storage simplify:main {char3:"2"} unless data storage simplify:main {char3:"3"} unless data storage simplify:main {char3:"4"} unless data storage simplify:main {char3:"5"} unless data storage simplify:main {char3:"6"} unless data storage simplify:main {char3:"7"} unless data storage simplify:main {char3:"8"} unless data storage simplify:main {char3:"9"} run function application_name:internal/number_replace
execute if data storage simplify:main {char:"_"} run data modify storage case:io in set from storage simplify:main in[0]
execute if data storage simplify:main {char:"_"} run function case:call/to_upper
execute if data storage simplify:main {char:"_"} run data modify storage simplify:main in[0] set from storage case:io out
execute if data storage simplify:main {char:"_"} run data remove storage simplify:main char
execute unless data storage simplify:main char if data storage simplify:main in[0] run function application_name:internal/next_char
scoreboard players remove $total string.simplify 1