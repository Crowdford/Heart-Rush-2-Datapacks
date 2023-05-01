execute as @a[team=!red] at @s if block ~ ~ ~ cut_copper_slab run function main:lobby/join/red
execute as @a[team=!blue] at @s if block ~ ~ ~ oxidized_cut_copper_slab run function main:lobby/join/blue
execute as @a[team=!yellow] at @s if block ~ ~ ~ exposed_cut_copper_slab run function main:lobby/join/yellow
execute as @a[team=!green] at @s if block ~ ~ ~ weathered_cut_copper_slab run function main:lobby/join/green
execute as @a[team=!random] at @s if block ~ ~ ~ waxed_exposed_cut_copper_slab run function main:lobby/join/random
execute as @a[team=!lobby,team=!lobby_creator,team=!lobby_heart,team=!lobby_ts,team=!crow,team=!beeb] at @s if block ~ ~ ~ waxed_cut_copper_slab run function main:lobby/join/spectator