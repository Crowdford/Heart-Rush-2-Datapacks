data modify storage simplify:main temp set from storage simplify:main in[0]
data remove storage simplify:main in[0]

execute unless data storage simplify:main {temp:"0"} run data modify storage simplify:main out append from storage simplify:main temp
execute if data storage simplify:main {temp:"0"} store result storage simplify:main outPosTemp int 1 run scoreboard players get pos string.simplify
execute if data storage simplify:main {temp:"0"} run data modify storage simplify:main outPos append from storage simplify:main outPosTemp
execute if data storage simplify:main {temp:"0"} run data modify storage simplify:main out append value "±"

# Next Pos
scoreboard players set posX string.simplify 6
execute if data storage simplify:main {temp:"i"} run scoreboard players set posX string.simplify 2
execute if data storage simplify:main {temp:"l"} run scoreboard players set posX string.simplify 3
execute if data storage simplify:main {temp:"t"} run scoreboard players set posX string.simplify 4
execute if data storage simplify:main {temp:"I"} run scoreboard players set posX string.simplify 4
execute if data storage simplify:main {temp:"f"} run scoreboard players set posX string.simplify 5
execute if data storage simplify:main {temp:"k"} run scoreboard players set posX string.simplify 5
scoreboard players operation pos string.simplify += posX string.simplify


execute if data storage simplify:main in[0] run function application_name:internal/sub_recursive