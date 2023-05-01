tag @s add healthAssist
scoreboard players add @s mvpAssists 1
execute at @e[type=area_effect_cloud,tag=tempDeadLocation,limit=1] run function #skills:events/player/on_assist