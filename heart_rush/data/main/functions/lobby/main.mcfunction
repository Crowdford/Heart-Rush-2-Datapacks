# Permanent Effects
effect give @a minecraft:resistance 999999 120 true
effect give @a minecraft:weakness 999999 120 true

# Functions
execute unless score timer Stats matches 1.. run function main:lobby/join
execute if score timer Stats matches 1.. run function main:lobby/join_alt

function main:lobby/start/main


# Void
execute as @a[gamemode=adventure] at @s positioned ~ 80 ~ if entity @s[distance=..10] positioned 10011 102 10000 unless entity @s[distance=..5] run function main:lobby/location
execute as @a[gamemode=adventure] at @s positioned ~ 80 ~ if entity @s[distance=..10] positioned 10011 102 10000 if entity @s[distance=..5] run tp @s 9960 106.5 10001 90 0

# Fast Bridge Travel
execute as @a at @s if block ~ 0 ~ barrier run effect give @s speed 12 7 true
execute as @a at @s unless block ~ 0 ~ barrier run effect clear @s speed 
execute as @a at @s unless block ~ 0 ~ barrier unless entity @s[scores={lobbyArmor=2}] run effect give @s speed 12 1 true
execute as @a at @s unless block ~ 0 ~ barrier if entity @s[scores={lobbyArmor=2}] run effect give @s speed 12 5 true

# GUI Fix
execute as @a[scores={tsEGUI_guiPage=11..}] positioned 9868 112 9986 unless entity @s[distance=..10] run scoreboard players set @s tsEGUI_guiSwitch 1

# Spam Detection
scoreboard players remove @a[scores={spam=1..}] spam 1
scoreboard players remove @a[scores={spam2=1..}] spam2 1
execute as @a[scores={spam=750..}] run scoreboard players add @s spam2 3
scoreboard players set @a[scores={spam2=1..,tsEGUI_guiPage=4..5}] tsEGUI_guiSwitch 1
scoreboard players set @a[scores={spam=1000..}] spam 1000
scoreboard players set @a[scores={spam2=1000..}] spam2 1000


# Respawn
execute as @a[scores={respawn=1..}] run schedule function main:game/clear_delay 1t
execute as @a[scores={respawn=1..}] run function health:death/respawn

# Secret Armors
function main:lobby/secret/armors

# dynskill
function dynamic_skill:lobby

# tutorial beam
execute positioned 9998 104 9997 as @a[tag=!sawTutorial,distance=..15] run function main:lobby/tutorial_beam


# actionbar
scoreboard players set health custom_ui 20
scoreboard players set max_health custom_ui 20
scoreboard players set armor custom_ui 0
scoreboard players set shield custom_ui 0
scoreboard players set flash custom_ui 0
scoreboard players set up custom_ui 0
scoreboard players set armor_up custom_ui 0
scoreboard players set gold custom_ui 0
scoreboard players set health_backcolor custom_ui 1
scoreboard players set health_color custom_ui 1
scoreboard players set armor_color custom_ui 1
scoreboard players set gold_color custom_ui 1
execute as @a[gamemode=adventure] positioned 9866 111 10001 unless entity @s[distance=..20] run function main:lobby/ui

# tutorial translations
execute as @a at @s anchored eyes facing entity @e[type=armor_stand,tag=tut1,distance=..10,limit=6] feet anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run title @s actionbar [{"translate":"lobby.tutorial.1.subtitle","color":"white"}]
execute as @a at @s anchored eyes facing entity @e[type=armor_stand,tag=tut2,distance=..10,limit=2] feet anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run title @s actionbar [{"translate":"lobby.tutorial.2.subtitle","color":"white"}]
execute as @a at @s anchored eyes facing entity @e[type=armor_stand,tag=tut3,distance=..10,limit=2] feet anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run title @s actionbar [{"translate":"lobby.tutorial.3.subtitle","color":"white"}]

# Writable Book
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}] at @s if data entity @s Thrower run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:writable_book"}}] at @s if data entity @s Thrower run kill @s

# Tutorial Steal
execute positioned 9853 106 10002 as @a[distance=..3,tag=tutPoint] run tp @s 9868 112 10018 180 0
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=red] run tellraw @s [{"text":" |  ","color":"gray"},{"translate":"game.cant_steal_from_own_team","color":"red","bold":true}]
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=red] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=blue] run tellraw @a[distance=..20] ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"red"},{"translate":"game.team.red","color":"red","bold":true},{"translate":"game.team.red.alt","color":"red","bold":true},{"translate":"game.team.red.alt2","color":"red","bold":true}]}]
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=blue] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=green] run tellraw @a[distance=..20] ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"red"},{"translate":"game.team.red","color":"red","bold":true},{"translate":"game.team.red.alt","color":"red","bold":true},{"translate":"game.team.red.alt2","color":"red","bold":true}]}]
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=green] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=yellow] run tellraw @a[distance=..20] ["",{"text":" |  ","color":"gray"},{"translate":"game.steal","color":"gray","with":[{"selector":"@s"},{"text":"❤","color":"red"},{"translate":"game.team.red","color":"red","bold":true},{"translate":"game.team.red.alt","color":"red","bold":true},{"translate":"game.team.red.alt2","color":"red","bold":true}]}]
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=yellow] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1 1
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=red] run tag @s add tutPoint
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=blue] run tag @s add tutPoint
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=green] run tag @s add tutPoint
execute positioned 9853 106 10002 as @a[distance=..3,tag=!tutPoint,team=yellow] run tag @s add tutPoint
execute positioned 9853 106 10002 as @a[distance=15..,tag=tutPoint] run tag @s remove tutPoint