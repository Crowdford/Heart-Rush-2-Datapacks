#tellraw @a {"score":{"name":"@s","objective":"deathLType"}}
# failsafe death
tag @s add temp
data modify block 0 1 0 Text1 set value '[{"translate":"death.attack.generic","with":[{"selector":"@p[tag=temp]"}]}]'
tag @s remove temp
#tellraw @a ["Last Attacker: ",{"score":{"name":"@s","objective":"deathLPlayerID"}}]
#tellraw @a ["Last PreAttacker: ",{"score":{"name":"@s","objective":"deathPPlayerID"}}]
#tellraw @a ["Last Damage: ",{"score":{"name":"@s","objective":"deathLPlayerTime"}}]
# if last damage is self, reset attacker
execute if score @s deathLPlayerID = @s playerID run scoreboard players set @s deathLPlayerID 0
# if pre last damage is self, reset pre attacker
execute if score @s deathPPlayerID = @s playerID run scoreboard players set @s deathPPlayerID 0
# if attacker is invalid (self) but pre attacker isn't use pre attacker is death reason
execute if score @s deathLPlayerID matches 0 unless score @s deathPPlayerID matches 0 run scoreboard players operation @s deathLPlayerTime = @s deathPPlayerTime
execute if score @s deathLPlayerID matches 0 unless score @s deathPPlayerID matches 0 run scoreboard players operation @s deathLPlayerID = @s deathPPlayerID
# if attacker and pre attacker are the same reset pre attacker
execute if score @s deathPPlayerID = @s deathLPlayerID run scoreboard players set @s deathPPlayerID 0
# if pre attacker is invalid increase timer
execute if score @s deathPPlayerID matches 0 run scoreboard players set @s deathPPlayerTime 1000
# get cause
execute if score @s deathPPlayerTime matches 101.. if score @s deathLPlayerTime matches ..2 if score @s deathLPlayerID matches 1.. run function health:reason/get_reason_immediate
execute if score @s deathPPlayerTime matches 101.. if score @s deathLPlayerTime matches ..2 if score @s deathLPlayerID matches ..0 run function health:reason/get_reason_direct
execute if score @s deathPPlayerTime matches 101.. if score @s deathLPlayerTime matches 3..399 if score @s deathLPlayerID matches 1.. run function health:reason/get_reason_player
execute if score @s deathPPlayerTime matches 101.. if score @s deathLPlayerTime matches 3..399 if score @s deathLPlayerID matches ..0 run function health:reason/get_reason_direct
execute if score @s deathPPlayerTime matches ..100 if score @s deathLPlayerTime matches ..2 if score @s deathLPlayerID matches 1.. run function health:reason/get_reason_immediate_assist
execute if score @s deathPPlayerTime matches ..100 if score @s deathLPlayerTime matches ..2 if score @s deathLPlayerID matches ..0 run function health:reason/get_reason_direct
execute if score @s deathPPlayerTime matches ..100 if score @s deathLPlayerTime matches 3..399 if score @s deathLPlayerID matches 1.. run function health:reason/get_reason_player_assist
execute if score @s deathPPlayerTime matches ..100 if score @s deathLPlayerTime matches 3..399 if score @s deathLPlayerID matches ..0 run function health:reason/get_reason_direct
execute if score @s deathLPlayerTime matches 400.. run function health:reason/get_reason_direct

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["deathMsg"]}
data modify entity @e[tag=deathMsg,limit=1] CustomName set from block 0 1 0 Text1

#scoreboard players set @s deathLPlayerTime 10000
#scoreboard players set @s deathLPlayerID 0