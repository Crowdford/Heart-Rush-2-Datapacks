execute store result score @s uuid1 run data get entity @s Owner[0]
execute store result score @s uuid2 run data get entity @s Owner[1]
execute store result score @s uuid3 run data get entity @s Owner[2]
execute store result score @s uuid4 run data get entity @s Owner[3]
tag @s add tempArrow
execute as @a if score @s uuid1 = @e[type=arrow,tag=tempArrow,limit=1] uuid1 if score @s uuid2 = @e[type=arrow,tag=tempArrow,limit=1] uuid2 if score @s uuid3 = @e[type=arrow,tag=tempArrow,limit=1] uuid3 if score @s uuid4 = @e[type=arrow,tag=tempArrow,limit=1] uuid4 run tag @s add tempOwner
scoreboard players operation @s arrowID = @p[tag=tempOwner] playerID
execute if entity @p[tag=tempOwner,team=red] run scoreboard players set @s team 1
execute if entity @p[tag=tempOwner,team=blue] run scoreboard players set @s team 2
execute if entity @p[tag=tempOwner,team=green] run scoreboard players set @s team 3
execute if entity @p[tag=tempOwner,team=yellow] run scoreboard players set @s team 4
tag @s remove tempArrow
tag @a remove tempOwner
tag @s add arrow_registered
data modify entity @s pickup set value 0b