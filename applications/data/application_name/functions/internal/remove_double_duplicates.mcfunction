data modify storage case:io in set from storage simplify:main in[0]
function case:call/to_lower
execute store result score $success string.simplify run data modify storage simplify:main char set from storage case:io out
data modify storage case:io in set from storage simplify:main in[1]
function case:call/to_lower
execute store result score $success2 string.simplify run data modify storage simplify:main char2 set from storage case:io out

execute if score $success2 string.simplify matches 1 run scoreboard players set $success string.simplify 1
execute if score $success string.simplify matches 1 run data modify storage simplify:main temp append from storage simplify:main in[0]
execute if score $success string.simplify matches 1 run data modify storage simplify:main temp append from storage simplify:main in[1]

data remove storage simplify:main in[0]
data remove storage simplify:main in[0]

execute if data storage simplify:main in[0] unless data storage simplify:main in[1] run data modify storage simplify:main temp append from storage simplify:main in[0]
execute if data storage simplify:main in[0] if data storage simplify:main in[1] run function application_name:internal/remove_double_duplicates



