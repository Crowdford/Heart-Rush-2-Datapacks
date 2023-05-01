# Items
tag @a[tag=creeperCharge] add dealtDmgExplosion
tag @a[tag=creeperCharge] remove creeperCharge
execute if score pause Stats matches 1.. run scoreboard players reset * carrot
execute as @a[scores={carrot=1..},gamemode=adventure] run function main:game/carrot
scoreboard players reset * carrot 
execute as @a[scores={snowFireball=1..}] if score pause Stats matches 1.. run function main:game/item/fireball_dont
execute as @a[scores={snowFireball=1..}] unless score pause Stats matches 1.. if score @s fbCooldown1 matches 1.. run function main:game/item/fireball_dont
execute as @a[scores={snowFireball=1..}] unless score pause Stats matches 1.. unless score @s fbCooldown1 matches 1.. run function main:game/item/fireball_spawn
function main:game/item/fireball

execute as @a if score @s fbCooldown1 matches 1.. run scoreboard players remove @s fbCooldown1 1
execute as @a if score @s fbCooldown2 matches 1.. run scoreboard players remove @s fbCooldown2 1

# Break & Main
execute if score game Stats matches 1 run function main:game/main_default
execute if score game Stats matches 2 run function main:game/pause/main

# Spec if Eliminated
function main:game/eliminate_players

# Spec Inv 
execute as @a[gamemode=adventure] at @s if entity @a[gamemode=spectator,distance=..1,team=spectator] run function main:game/spec_inv
execute as @a[gamemode=spectator,team=spectator] at @s unless entity @a[gamemode=adventure,distance=..1] run clear @s

# Gold
execute if score gold options matches 1 run scoreboard players add @a[gamemode=adventure] goldtimer 4
execute if score gold options matches 2 run scoreboard players add @a[gamemode=adventure] goldtimer 8
execute if score gold options matches 3 run scoreboard players add @a[gamemode=adventure] goldtimer 16
execute as @a[gamemode=adventure] if data entity @s ActiveEffects[{Id:17}] run scoreboard players set @s goldtimer -1
scoreboard players add @a gold 0
scoreboard players add @a[scores={goldtimer=80..,gold=..14998}] gold 2
scoreboard players remove @a[scores={goldtimer=80..}] goldtimer 80
scoreboard players add @a[scores={goldtimer=40..,gold=..14999}] gold 1
scoreboard players remove @a[scores={goldtimer=40..}] goldtimer 40


# Item Drop Handler
execute as @e[type=item,tag=!item_registered] run function main:game/item
execute as @e[type=item] at @s if block ~ ~ ~ end_gateway run tp @s @e[tag=spawn,sort=nearest,limit=1]
execute as @e[type=arrow] run function main:game/arrow
execute as @e[type=trident] run function main:game/trident

# Update
scoreboard players add update Stats 1
execute if score update Stats matches 20.. run function main:game/update

# Void Death
execute as @a[gamemode=adventure] at @s run function main:game/void

# Item Check
execute as @a[gamemode=adventure] run function main:game/item_check

# Custom Cooldown
execute as @a[gamemode=adventure,scores={customCooldown=1..}] run function main:game/equipment/cooldown
execute as @a[gamemode=adventure,scores={useShield=1..}] run function main:game/equipment/shield_use
execute as @a[gamemode=adventure,scores={shieldCooldown=1..}] run function main:game/equipment/shield_cd

# Store Health
execute as @a[gamemode=adventure] run scoreboard players operation @s actualHealth = @s healthActual
execute as @a[gamemode=adventure] run scoreboard players remove @s actualHealth 60
scoreboard players set @a[gamemode=!adventure] actualHealth 0


# Elytra
scoreboard players remove @a[scores={elytra=0..}] elytra 1
execute as @a[scores={elytra=0}] run scoreboard players reset @s armorMove
execute as @a[scores={elytra=0}] run clear @s elytra
execute as @a[scores={elytra=0}] run tag @s add armorUpdate


# Health Flash & Regen
execute as @a[gamemode=adventure] unless score @s healthFlash matches 1.. unless score @s actualHealth >= @s maxHealth run function main:game/ui_up
execute as @a[gamemode=adventure] run function main:game/ui
execute as @a[gamemode=adventure] run scoreboard players operation @s disHealth = @s actualHealth


# effect arrows 
execute as @a[nbt={ActiveEffects:[{Id:12}]}] run function main:game/arrow/weakness
execute as @a[nbt={ActiveEffects:[{Id:13}]}] run function main:game/arrow/slowness
execute as @a[nbt={ActiveEffects:[{Id:29}]}] run function main:game/arrow/poison

# void charm
execute as @a[scores={void_charm=1..}] at @s run function main:game/item/void_charm_aura


# special entity
execute as @e[tag=sp_entity_display] at @s run function main:game/sp_entity