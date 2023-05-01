## remove effect that is getting modified
scoreboard players set duration effectstack 0

# clear effect
tag @s add dontEffectTrigger
function effectstack:effect
tag @s remove dontEffectTrigger