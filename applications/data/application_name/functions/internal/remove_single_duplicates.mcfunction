execute store result score $success string.simplify run data modify storage simplify:main char set from storage simplify:main in[0]
execute if data storage simplify:main {char:"0"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"1"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"2"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"3"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"4"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"5"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"6"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"7"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"8"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"9"} run data remove storage simplify:main char
execute if score $success string.simplify matches 1 run data modify storage simplify:main temp append from storage simplify:main in[0]
data remove storage simplify:main in[0]
execute if data storage simplify:main in[0] run function application_name:internal/remove_single_duplicates