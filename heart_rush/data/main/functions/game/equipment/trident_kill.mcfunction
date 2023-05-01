data modify storage sbc:main trident set value []
data modify storage sbc:main trident set from entity @s Owner
execute store result score success Temp run data modify storage sbc:main trident set from storage sbc:main tridentOwner
execute if score success Temp matches 0 at @s run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.5 0. 0.1 10
execute if score success Temp matches 0 run kill @s