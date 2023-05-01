tag @s add temp
execute as @e[type=armor_stand,tag=deadMarker] if score @s deathID = @p[tag=temp] deathID run spectate @s @p[tag=temp]
tag @s remove temp