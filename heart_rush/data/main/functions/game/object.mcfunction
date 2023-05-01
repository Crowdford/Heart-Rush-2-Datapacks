# Trigger
tag @s add tempOTrigger
execute at @s as @a if score @s playerID = @e[type=block_display,tag=tempOTrigger,limit=1] ObjectID run tag @s add tempOOwner
tag @s remove tempOTrigger
execute at @s as @a[tag=tempOOwner] run function #skills:object/main

# Lifetime
scoreboard players remove @s ObjectLife 1
execute if score @s ObjectLife matches 0 at @s as @a[tag=tempOOwner] run function #skills:object/death
execute if score @s ObjectLife matches ..0 run kill @s

# trigger
execute at @s as @a[distance=..0.5] run function #skills:object/trigger

# remove owner tag
tag @a remove tempOOwner