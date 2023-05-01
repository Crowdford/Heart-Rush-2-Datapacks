tag @s add inEffectStack
# Load Player
function effectstack:store/load
#tellraw @a ["loaded: ",{"nbt":"players[0]","storage":"effectstack:main"}]
# Create Effect
scoreboard players operation duration Temp = duration effectstack
execute store result storage effectstack:main effect.id int 1 run scoreboard players get id effectstack
execute store result storage effectstack:main effect.sid int 1 run scoreboard players get sid effectstack
execute store result storage effectstack:main effect.amplifier int 1 run scoreboard players get amplifier effectstack
execute store result storage effectstack:main effect.timestamp int 1 run scoreboard players operation duration Temp += timestamp effectstack
data modify storage effectstack:trigger effect set from storage effectstack:main effect
#execute if entity @s[name=_tsts_] run tellraw @a ["effect: ",{"nbt":"effect","storage":"effectstack:main"}]

# SID Check -> Add Effect
data modify storage effectstack:main temp set from storage effectstack:main player
data modify storage effectstack:main temp2 set value []
execute if data storage effectstack:main temp[0] run function effectstack:apply/sid_check
#tellraw @a ["sid checked: ",{"nbt":"temp2","storage":"effectstack:main"}]
execute if data storage effectstack:main effect run data modify storage effectstack:main temp2 append from storage effectstack:main effect
data modify storage effectstack:main player set from storage effectstack:main temp2

# Store
function effectstack:store/store

# Apply all effects
scoreboard players operation #id effectstack = id effectstack
function effectstack:apply/this

# Call Trigger
function effectstack:triggers/effect_start

#tellraw @a ["stored: ",{"nbt":"players[0]","storage":"effectstack:main"}]
tag @s remove inEffectStack