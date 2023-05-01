# Register
execute as @s[tag=!arrow_registered] run function main:game/arrow_register

# Arrow Block Break 
execute if data entity @s inBlockState.Name run function main:game/arrow_break
execute unless data entity @s inBlockState.Name if data entity @s {inGround:1b} run function main:game/arrow_break

# Trigger
tag @s add tempATrigger
execute at @s as @a if score @s playerID = @e[type=arrow,tag=tempATrigger,limit=1] arrowID run function #skills:arrow/main
tag @s remove tempATrigger