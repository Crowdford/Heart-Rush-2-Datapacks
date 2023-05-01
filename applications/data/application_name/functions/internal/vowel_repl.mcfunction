data modify storage simplify:main temp set from storage simplify:main vowel_repl[0]
data modify storage simplify:main char set from storage simplify:main vowel_repl[0]
data remove storage simplify:main vowel_repl[0]
execute if data storage simplify:main {temp:"a"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"A"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"e"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"E"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"i"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"I"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"o"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"O"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"u"} run function application_name:internal/vowel_repl_one
execute if data storage simplify:main {temp:"U"} run function application_name:internal/vowel_repl_one
data modify storage simplify:main vowel_repl_out append from storage simplify:main char
execute if data storage simplify:main vowel_repl[0] run function application_name:internal/vowel_repl