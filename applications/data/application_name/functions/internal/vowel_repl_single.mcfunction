data modify storage simplify:main temp set from storage simplify:main vowel_repl[0]
data modify storage simplify:main char set from storage simplify:main vowel_repl[0]
data remove storage simplify:main vowel_repl[0]
execute if data storage simplify:main {temp:"a"} run data modify storage simplify:main char set value "e"
execute if data storage simplify:main {temp:"A"} run data modify storage simplify:main char set value "E"
execute if data storage simplify:main {temp:"e"} run data modify storage simplify:main char set value "u"
execute if data storage simplify:main {temp:"E"} run data modify storage simplify:main char set value "U"
execute if data storage simplify:main {temp:"i"} run data modify storage simplify:main char set value "o"
execute if data storage simplify:main {temp:"I"} run data modify storage simplify:main char set value "O"
execute if data storage simplify:main {temp:"o"} run data modify storage simplify:main char set value "a"
execute if data storage simplify:main {temp:"O"} run data modify storage simplify:main char set value "A"
execute if data storage simplify:main {temp:"u"} run data modify storage simplify:main char set value "i"
execute if data storage simplify:main {temp:"U"} run data modify storage simplify:main char set value "I"
data modify storage simplify:main vowel_repl_out append from storage simplify:main char
execute if data storage simplify:main vowel_repl[0] run function application_name:internal/vowel_repl_single