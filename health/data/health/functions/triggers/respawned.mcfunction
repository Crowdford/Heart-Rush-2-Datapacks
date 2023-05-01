function main:game/respawn
execute at @s run function #skills:events/player/respawn/end
execute at @s as @a run function #skills:events/generic/respawn