scoreboard players set click_block Temp 0
# Lobby Team
execute if entity @s[team=lobby] run scoreboard players set click_block Temp 1
execute if entity @s[team=lobby] run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.not_in_team","color":"red"}]
execute if entity @s[team=lobby] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.25 1 0.25

# Lobby Heart Team
execute if entity @s[team=lobby_heart] run scoreboard players set click_block Temp 1
execute if entity @s[team=lobby_heart] run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.not_in_team","color":"red"}]
execute if entity @s[team=lobby_heart] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.25 1 0.25

# Creator Lobby Teams
execute if entity @s[team=lobby_creator] run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.not_in_team","color":"red","strikethrough":true},{"translate":" (%s)","with":[{"translate":"lobby.starting.error.override"}],"color":"green"}]
execute if entity @s[team=lobby_ts] run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.not_in_team","color":"red","strikethrough":true},{"translate":" (%s)","with":[{"translate":"lobby.starting.error.override"}],"color":"green"}]

# Team Check
scoreboard players set teams Temp 0
execute if entity @a[team=red] run scoreboard players add teams Temp 1
execute if entity @a[team=blue] run scoreboard players add teams Temp 1
execute if entity @a[team=green] run scoreboard players add teams Temp 1
execute if entity @a[team=yellow] run scoreboard players add teams Temp 1
execute as @a[team=random] run scoreboard players add teams Temp 1
execute if score starting Stats matches 0 if entity @s[name=_tsts_] unless score teams Temp matches 2.. run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.not_enough_teams","color":"red","strikethrough":true},{"translate":" (%s)","with":[{"translate":"lobby.starting.error.override"}],"color":"green"}]
execute if score starting Stats matches 0 if entity @s[name=_tsts_] unless score teams Temp matches 2.. run scoreboard players add teams Temp 1
execute if score starting Stats matches 0 unless score teams Temp matches 2.. run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.not_enough_teams","color":"red"}]
execute if score starting Stats matches 0 unless score teams Temp matches 2.. at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.25 1 0.25
execute if score starting Stats matches 0 unless score teams Temp matches 2.. run scoreboard players set click_block Temp 1

# Spam Block
execute if score @s spam2 matches 1.. unless entity @s[name=_tsts_] run scoreboard players set click_block Temp 1
execute if score @s spam2 matches 1.. at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.25 1 0.25
execute if score @s spam2 matches 1.. run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.spammed","color":"red"}]
execute if score @s spam2 matches 1.. if entity @s[name=_tsts_] run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.spammed","color":"red","strikethrough":true},{"translate":" (%s)","with":[{"translate":"lobby.starting.error.override"}],"color":"green"}]

# 32 Player Block
execute store result score players Temp if entity @a[team=!lobby,team=!lobby_heart,team=!lobby_creator,team=!lobby_ts,gamemode=adventure]
execute if score players Temp matches 33.. run scoreboard players set click_block Temp 1
execute if score players Temp matches 33.. run tellraw @s ["",{"text":" |  ","color":"gray"},{"translate":"lobby.starting.error.too_many_players","color":"red"}]
execute if score players Temp matches 33.. at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.25 1 0.25

# Click
execute if score click_block Temp matches 0 unless score clicked Stats matches 1.. run function main:lobby/start/clicked

scoreboard players add @s spam 200