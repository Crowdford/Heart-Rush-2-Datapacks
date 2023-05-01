# Game/Lobby
execute if score game Stats matches 0 run function main:lobby/main
execute if score game Stats matches 1..2 run function main:game/main

# Join
execute as @a unless score @s edgeJ matches 1.. if score @s edgeT matches 100.. unless score @s edgeK = #time edgeK run scoreboard players add @s edgeJ 1
gamemode adventure @a[gamemode=survival]
execute as @a[scores={edgeJ=1..,respawn=1..}] run function health:death/respawn
execute as @a[scores={edgeJ=1..}] run function main:game/join
execute as @a[scores={edgeT=1}] run function main:game/join
execute as @a[scores={edgeT=1}] if score game Stats matches ..0 run function main:lobby/first
execute as @a[scores={edgeT=1}] if score game Stats matches 1.. run function main:game/spectate
execute as @a[scores={edgeJ=1..}] if score game Stats matches ..0 run function main:lobby/second
execute as @a[scores={edgeJ=1..}] if score game Stats matches 1.. if score @s edgeI = #id edgeI if entity @s[gamemode=adventure] run function health:force_death/reconnect
execute as @a[scores={edgeJ=1..}] if score game Stats matches 1.. unless score @s edgeI = #id edgeI run function main:game/spectate
scoreboard players set @a edgeJ 0

# Always
execute as @e[type=armor_stand,tag=blink] run function main:game/blink/main

# Permanent Effect
effect give @a minecraft:saturation infinite 120 true

# Reload EGUI
execute as @a[scores={eOpen=1..}] run scoreboard players operation @s tsEGUI_guiSwitch = @s tsEGUI_guiPage
execute as @a[scores={eOpen=1..}] run scoreboard players set @s armorMove -10
execute as @a[scores={eOpen=1..}] run tag @s add armorUpdate
execute as @a[scores={eOpen=1..}] if score @s p.shop matches 0 if score game Stats matches 1.. run scoreboard players set @s tsEGUI_guiSwitch 11
execute as @a[scores={eOpen=1..}] positioned 9868 112 9986 if entity @s[distance=..10] run function main:lobby/lobby_shop
scoreboard players reset @a eOpen

# Kick & Crash Detection
scoreboard players add #time edgeK 1

