execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute at @s positioned ^ ^ ^0.5 unless block ~ ~ ~ #main:breakable at @s positioned ^ ^ ^-0.25 run particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0.05 5
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
tag @s add tempArrow
execute at @s as @a if score @s playerID = @e[type=arrow,tag=tempArrow,limit=1] arrowID run function #skills:events/player/arrow/miss
tag @s remove tempArrow
kill @s