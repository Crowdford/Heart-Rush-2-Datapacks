# check self damaging
execute if score @s playerID = @p[tag=dealtDmgAttacker] playerID run tag @p[tag=dealtDmgAttacker] remove dealtDmgAttacker

# check friendly fire
execute if entity @s[team=red] if entity @p[tag=dealtDmgAttacker,team=red] run tag @p[tag=dealtDmgAttacker] add dealtDmgFF
execute if entity @s[team=blue] if entity @p[tag=dealtDmgAttacker,team=blue] run tag @p[tag=dealtDmgAttacker] add dealtDmgFF
execute if entity @s[team=green] if entity @p[tag=dealtDmgAttacker,team=green] run tag @p[tag=dealtDmgAttacker] add dealtDmgFF
execute if entity @s[team=yellow] if entity @p[tag=dealtDmgAttacker,team=yellow] run tag @p[tag=dealtDmgAttacker] add dealtDmgFF

# store previous attacker
execute if entity @p[tag=dealtDmgAttacker,tag=!dealtDmgFF] unless score @s deathLPlayerID = @p[tag=dealtDmgAttacker] playerID run scoreboard players operation @s deathPPlayerTime = @s deathLPlayerTime
execute if entity @p[tag=dealtDmgAttacker,tag=!dealtDmgFF] unless score @s deathLPlayerID = @p[tag=dealtDmgAttacker] playerID run scoreboard players operation @s deathPPlayerID = @s deathLPlayerID

# set attacker
execute if entity @p[tag=dealtDmgAttacker,tag=!dealtDmgFF] run scoreboard players operation @s deathLPlayerID = @p[tag=dealtDmgAttacker] playerID
execute if entity @p[tag=dealtDmgAttacker,tag=!dealtDmgFF] run scoreboard players set @s deathLPlayerTime 0

## special effects for attacker 
# fireball hit success sound
execute if entity @p[tag=dealtDmgAttacker,tag=!dealtDmgFF] if entity @s[scores={deathLType=8}] as @p[tag=dealtDmgAttacker] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 2
# friendly fire sound
execute as @p[tag=dealtDmgAttacker,tag=dealtDmgFF] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1

# remove temp tag
tag @p[tag=dealtDmgAttacker] remove dealtDmgAttacker
tag @p[tag=dealtDmgFF] remove dealtDmgFF