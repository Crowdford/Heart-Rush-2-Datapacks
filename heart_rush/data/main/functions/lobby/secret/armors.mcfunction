# Jump Boost
effect give @a[scores={lobbyArmor=1}] jump_boost infinite 3 true
execute as @a[scores={lobbyArmor=1}] at @s run particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.2 1 normal @a[distance=0.01..]
execute as @a[scores={lobbyArmor=1}] at @s run particle happy_villager ~ ~ ~ 0.3 0 0.3 0.2 1 normal @s

# Speed
execute as @a[scores={lobbyArmor=2}] at @s run particle enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.2 1 normal @a[distance=0.01..]
execute as @a[scores={lobbyArmor=2}] at @s run particle enchanted_hit ~ ~ ~ 0.3 0 0.3 0.2 1 normal @s

# Fire
effect give @a[scores={lobbyArmor=3}] fire_resistance infinite 120 true
execute as @a[scores={lobbyArmor=3}] at @s run particle lava ~ ~1 ~ 0.3 0.5 0.3 0.05 1 normal @a[distance=0.01..]
execute as @a[scores={lobbyArmor=3}] at @s run particle flame ~ ~ ~ 0.3 0 0.3 0.05 1 normal @s

# Lightning
execute as @a[scores={lobbyArmor=4}] at @s run particle crit ~ ~1 ~ 0.3 0.5 0.3 0.2 1 normal @a[distance=0.01..]
execute as @a[scores={lobbyArmor=4}] at @s run particle crit ~ ~ ~ 0.3 0 0.3 0.2 1 normal @s
execute as @a[scores={lobbyArmor=4}] run scoreboard players add @s lobbyLightning 1
execute as @a[scores={lobbyArmor=4,lobbyLightning=250..}] at @s positioned ~ ~4 ~ if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run function main:util/lightning
execute as @a[scores={lobbyArmor=4,lobbyLightning=250..}] run scoreboard players set @s lobbyLightning 0

# Witch
execute as @a[scores={lobbyArmor=5}] at @s run particle witch ~ ~1 ~ 0.3 0.5 0.3 0.05 1 normal @a[distance=0.01..]
execute as @a[scores={lobbyArmor=5}] at @s run particle witch ~ ~ ~ 0.3 0 0.3 0.05 1 normal @s