# Output if in Callback
#tellraw @a ["Output: ",{"storage":"string:new","nbt":"out","interpret":false}]
data modify storage dynamic_skill:main temp1 set from storage string:new out[0]
data modify storage dynamic_skill:main temp2 set from storage string:new out[1]
data modify storage dynamic_skill:main temp3 set from storage string:new out[2]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[0]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[-1]
execute if data storage dynamic_skill:main {temp1:"{",temp2:"\"",temp3:"t"} run data remove storage string:new out[-1]
data modify storage dynamic_skill:main binary set value []
execute if data storage string:new out[0] run function dynamic_skill:book/to_bin
scoreboard players set dontSave dynamic_skill 1
function dynamic_skill:decode
#tellraw @a ["Output: ",{"storage":"dynamic_skill:main","nbt":"binary","interpret":false}]

tag @a remove skillSubmitter