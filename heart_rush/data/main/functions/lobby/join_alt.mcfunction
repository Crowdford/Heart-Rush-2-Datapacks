execute as @a[team=!red,team=!blue,team=!green,team=!yellow,team=!random] at @s if block ~ ~ ~ brick_slab run function main:lobby/join/red
execute as @a[team=!red,team=!blue,team=!green,team=!yellow,team=!random] at @s if block ~ ~ ~ prismarine_slab run function main:lobby/join/blue
execute as @a[team=!red,team=!blue,team=!green,team=!yellow,team=!random] at @s if block ~ ~ ~ sandstone_slab run function main:lobby/join/yellow
execute as @a[team=!red,team=!blue,team=!green,team=!yellow,team=!random] at @s if block ~ ~ ~ dark_prismarine_slab run function main:lobby/join/green
execute as @a[team=!red,team=!blue,team=!green,team=!yellow,team=!random] at @s if block ~ ~ ~ prismarine_brick_slab run function main:lobby/join/random