execute unless score @s edgeI = #id edgeI run function skills:condition_not_met
execute if entity @s[tag=eliminated] run function skills:condition_not_met
execute if entity @s[gamemode=spectator] run function skills:condition_not_met