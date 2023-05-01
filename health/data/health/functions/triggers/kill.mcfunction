tag @s add healthKill
scoreboard players add @s mvpKills 1
execute at @s as @a run function #skills:events/generic/kill
execute at @e[type=area_effect_cloud,tag=tempDeadLocation,limit=1] run function #skills:events/player/on_kill
tag @a remove healthKilled