tag @s add trident_miss
execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute at @s positioned ^ ^ ^ if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^ ^1.5 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^1 ^ if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^1 ^1 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^-1 ^ if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^ ^-1 ^1 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^1 ^ ^ if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^1 ^ ^1 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^-1 ^ ^ if block ~ ~ ~ #main:breakable run function main:game/block/devalue
execute at @s positioned ^-1 ^ ^1 if block ~ ~ ~ #main:breakable run function main:game/block/devalue
tag @s add tempTrident
execute at @s as @a if score @s playerID = @e[type=trident,tag=tempTrident,limit=1] tridentID run function #skills:events/player/trident/miss
tag @s remove tempTrident