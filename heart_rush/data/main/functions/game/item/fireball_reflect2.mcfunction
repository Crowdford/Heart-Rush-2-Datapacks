#say fireball hit by player

data merge entity @e[tag=fireball_marker,type=slime,limit=1,sort=nearest,distance=..6] {HurtTime:0s}
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["fireball_new"]}
execute as @e[tag=fireball_new] run data modify entity @e[tag=fireball,type=snowball,limit=1,sort=nearest,distance=..5] Motion set from entity @s Pos
kill @e[tag=fireball_new]
tag @s remove hitFireball
advancement revoke @s only main:hit_fireball