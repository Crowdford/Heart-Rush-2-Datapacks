# Output if in Callback
#tellraw @a ["Output: ",{"storage":"universal:strings","nbt":"io","interpret":false}]
data modify storage dynamic_skill:main binary set value []
execute if data storage string:new out[0] run function dynamic_skill:book/to_bin
scoreboard players set dontSave dynamic_skill 0
function dynamic_skill:decode
#tellraw @a ["Output: ",{"storage":"dynamic_skill:main","nbt":"binary","interpret":false}]
