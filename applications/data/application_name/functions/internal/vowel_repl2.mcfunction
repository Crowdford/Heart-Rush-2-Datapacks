data modify storage simplify:main temp set from storage simplify:main vowel_repl[0]
data modify storage simplify:main char set from storage simplify:main vowel_repl[0]
data remove storage simplify:main vowel_repl[0]
execute if data storage simplify:main {temp:"y"} run data modify storage simplify:main char set value "i"
execute if data storage simplify:main {temp:"Y"} run data modify storage simplify:main char set value "I"
data modify storage simplify:main vowel_repl_out append from storage simplify:main char
execute if data storage simplify:main vowel_repl[0] run function application_name:internal/vowel_repl2