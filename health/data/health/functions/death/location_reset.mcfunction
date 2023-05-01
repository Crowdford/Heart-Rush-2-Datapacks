tag @s add temp
execute as @e[type=armor_stand,tag=deadMarker] if score @s deathID = @p[tag=temp] deathID run kill @s 
tag @s remove temp