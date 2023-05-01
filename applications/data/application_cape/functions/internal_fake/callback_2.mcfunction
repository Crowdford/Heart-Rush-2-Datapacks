# Output if in Callback
#execute if score $callback string matches 1 run tellraw @a ["Output: ",{"storage":"universal:strings","nbt":"io","interpret":false}]
execute if score $callback string matches 1 run data modify storage dynamic_skill:main binary set value []
execute if score $callback string matches 1 if data storage universal:strings io[0] run function dynamic_skill:book/to_bin
execute if score $callback string matches 1 run scoreboard players set dontSave dynamic_skill 0
execute if score $callback string matches 1 run function dynamic_skill:decode
#execute if score $callback string matches 1 run tellraw @a ["Output: ",{"storage":"dynamic_skill:main","nbt":"binary","interpret":false}]
