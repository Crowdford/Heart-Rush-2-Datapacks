scoreboard players operation id Temp = @e[type=trident,sort=nearest,limit=1] tridentID
kill @e[type=trident,sort=nearest,limit=1]
execute as @a if score @s playerID = id Temp run function main:game/equipment/trident