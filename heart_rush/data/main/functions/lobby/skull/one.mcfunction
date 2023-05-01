tag @r[tag=skullNotChosen] add skullNotChosen2
tag @s add temp

execute as @p[tag=skullNotChosen2] run function main:store/load
data modify block 0 1 0 Text1 set value '{"storage":"sbc:main","nbt":"player.short","interpret":true}'

execute as @p[tag=skullNotChosen2] run loot replace entity @e[tag=temp,type=armor_stand] armor.head loot application_name:get/skull
execute as @p[tag=skullNotChosen2] run data modify entity @e[tag=temp,type=armor_stand,limit=1] CustomName set from block 0 1 0 Text1
execute unless entity @p[tag=skullNotChosen2] run function main:lobby/skull/random

tag @a[tag=skullNotChosen2] remove skullNotChosen
tag @a[tag=skullNotChosen2] remove skullNotChosen2
tag @s remove temp