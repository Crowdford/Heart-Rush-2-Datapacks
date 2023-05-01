scoreboard players add @e[type=minecraft:snowball,tag=fireball] fireballTimer 1
scoreboard players add @e[type=minecraft:fireball] fireballTimer 1
kill @e[type=snowball,tag=fireball,scores={fireballTimer=250..}]
kill @e[type=fireball,scores={fireballTimer=250..}]



execute as @a[tag=hitFireball] at @s run function main:game/item/fireball_reflect2
execute as @e[type=snowball,tag=fireball] run data merge entity @s {Air:1s}
execute as @e[type=snowball,tag=fireball] run data merge entity @s {Air:0s}
execute as @e[type=snowball,tag=fireball] at @s as @e[tag=fireball_marker,type=slime,distance=..6,limit=1,sort=nearest,nbt={HurtTime:9s}] run function main:game/item/fireball_reflect
execute as @e[type=slime,tag=fireball_marker] at @s run function main:game/item/fireball_slime

execute as @e[type=fireball] at @s run kill @e[tag=fireball_marker,type=area_effect_cloud,distance=..5,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=fireball_marker] at @s run function main:game/item/fireball_blast
execute as @e[type=fireball] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["fireball_marker"]}