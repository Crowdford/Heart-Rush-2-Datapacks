# 'the' check
scoreboard players set $the string.simplify 0
data modify storage simplify:main temp set from storage simplify:main out[-2]
execute if data storage simplify:main {temp:"e"} run scoreboard players add $the string.simplify 1
execute if data storage simplify:main {temp:"E"} run scoreboard players add $the string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-3]
execute if data storage simplify:main {temp:"h"} run scoreboard players add $the string.simplify 1
execute if data storage simplify:main {temp:"H"} run scoreboard players add $the string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-4]
execute if data storage simplify:main {temp:"t"} run scoreboard players add $the string.simplify 1
execute if data storage simplify:main {temp:"T"} run scoreboard players add $the string.simplify 1

# 'its'/'itz' check
scoreboard players set $its string.simplify 0
data modify storage simplify:main temp set from storage simplify:main out[-2]
execute if data storage simplify:main {temp:"s"} run scoreboard players add $its string.simplify 1
execute if data storage simplify:main {temp:"S"} run scoreboard players add $its string.simplify 1
execute if data storage simplify:main {temp:"z"} run scoreboard players add $its string.simplify 1
execute if data storage simplify:main {temp:"Z"} run scoreboard players add $its string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-3]
execute if data storage simplify:main {temp:"t"} run scoreboard players add $its string.simplify 1
execute if data storage simplify:main {temp:"T"} run scoreboard players add $its string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-4]
execute if data storage simplify:main {temp:"i"} run scoreboard players add $its string.simplify 1
execute if data storage simplify:main {temp:"I"} run scoreboard players add $its string.simplify 1

# 'its' check
scoreboard players set $sir string.simplify 0
data modify storage simplify:main temp set from storage simplify:main out[-2]
execute if data storage simplify:main {temp:"r"} run scoreboard players add $sir string.simplify 1
execute if data storage simplify:main {temp:"R"} run scoreboard players add $sir string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-3]
execute if data storage simplify:main {temp:"i"} run scoreboard players add $sir string.simplify 1
execute if data storage simplify:main {temp:"I"} run scoreboard players add $sir string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-4]
execute if data storage simplify:main {temp:"s"} run scoreboard players add $sir string.simplify 1
execute if data storage simplify:main {temp:"S"} run scoreboard players add $sir string.simplify 1

# Remove Last Char
# if this wasnt commented names would be ended after one word
#execute unless score $the string.simplify matches 3 unless score $its string.simplify matches 3 unless score $sir string.simplify matches 3 run function application_name:internal/end_name_via_word