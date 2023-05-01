scoreboard players set teams Temp 0
execute if entity @a[team=red,gamemode=adventure] run scoreboard players add teams Temp 1
execute if entity @a[team=blue,gamemode=adventure] run scoreboard players add teams Temp 1
execute if entity @a[team=green,gamemode=adventure] run scoreboard players add teams Temp 1
execute if entity @a[team=yellow,gamemode=adventure] run scoreboard players add teams Temp 1
execute unless entity @a[team=red,gamemode=adventure] if entity @a[team=red,gamemode=spectator,scores={respawn=1..}] run scoreboard players add teams Temp 1
execute unless entity @a[team=blue,gamemode=adventure] if entity @a[team=blue,gamemode=spectator,scores={respawn=1..}] run scoreboard players add teams Temp 1
execute unless entity @a[team=green,gamemode=adventure] if entity @a[team=green,gamemode=spectator,scores={respawn=1..}] run scoreboard players add teams Temp 1
execute unless entity @a[team=yellow,gamemode=adventure] if entity @a[team=yellow,gamemode=spectator,scores={respawn=1..}] run scoreboard players add teams Temp 1