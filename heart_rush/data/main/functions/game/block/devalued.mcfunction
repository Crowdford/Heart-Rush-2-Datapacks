function main:game/item_handle2
execute if entity @s[type=item] run kill @s
execute align xyz run particle minecraft:crit ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0.3 10
execute align xyz positioned ~0.5 ~1 ~0.5 as @a[gamemode=adventure,distance=..0.25] at @s if block ~ ~-1 ~ #main:breakable run tp @s ~ ~0.1 ~