# Clear Effect
execute store result score #id effectstack run data get storage effectstack:main player[0].id
scoreboard players set #duration effectstack 0
scoreboard players set #amplifier effectstack 0
function effectstack:apply/clear/tree

# Trigger
data modify storage effectstack:trigger queue append from storage effectstack:main player[0]