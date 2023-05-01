# Register
execute as @s[tag=!trident_registered] run function main:game/trident_register

# Arrow Block Break 
execute if entity @s[tag=!trident_miss] if data entity @s inBlockState.Name run function main:game/trident_miss

# Trigger
tag @s add tempATrigger
execute at @s as @a if score @s playerID = @e[type=trident,tag=tempATrigger,limit=1] tridentID run function #skills:trident/main
tag @s remove tempATrigger