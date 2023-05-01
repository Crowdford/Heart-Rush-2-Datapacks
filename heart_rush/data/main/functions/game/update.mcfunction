# Update Timer Reset
# Update Timer Reset
scoreboard players set update Stats 0

# Spawn Protection
execute as @e[tag=spawn] at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace #main:breakable

# Defensless Mode
execute if score defenseless options matches 1 if score timer Stats matches 14000.. as @e[tag=hole] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #main:breakable
execute if score defenseless options matches 1 if score timer Stats matches 14000.. as @a[gamemode=adventure] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 red_mushroom_block replace red_stained_glass
execute if score defenseless options matches 1 if score timer Stats matches 14000.. as @a[gamemode=adventure] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 brown_mushroom_block replace blue_stained_glass
execute if score defenseless options matches 1 if score timer Stats matches 14000.. as @a[gamemode=adventure] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 acacia_leaves replace lime_stained_glass
execute if score defenseless options matches 1 if score timer Stats matches 14000.. as @a[gamemode=adventure] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 mushroom_stem replace yellow_stained_glass

# Block Restore
execute as @a[gamemode=adventure] run function main:game/block/update
execute as @a[gamemode=adventure] unless data entity @s Inventory[{tag:{custom:"melee"}}] run function main:game/equipment/melee
execute as @a[gamemode=adventure] unless data entity @s Inventory[{tag:{custom:"ranged"}}] run function main:game/equipment/ranged
execute as @a[gamemode=adventure,scores={eqaLevel=5..},tag=!armorUpdate] unless data entity @s Inventory[{tag:{custom:"shield"}}] unless score @s eqs matches 0 run function main:game/equipment/shield

# Void Trident
# Void Death
execute as @e[type=trident] at @s run function main:game/trident_void
execute as @e[type=arrow] at @s run function main:game/arrow_void

# Armor Update
execute as @a[scores={armorMove=1..,},tag=armorUpdate] run function main:game/equipment/shield
execute as @a[scores={armorMove=1..},tag=armorUpdate] run function main:game/equipment/armor

# Natural Regeneration
scoreboard players set id effectstack 10
scoreboard players set amplifier effectstack 0
scoreboard players set duration effectstack 4840
scoreboard players set sid effectstack 2
tag @a[gamemode=adventure] add dontEffectTrigger
execute as @a[gamemode=adventure,tag=!noNatRegen] unless data entity @s ActiveEffects[{Id:10b}] run function effectstack:effect
tag @a[gamemode=adventure] remove dontEffectTrigger


# Lifetime for Skill Entities
scoreboard players remove @e[scores={lifetime=1..}] lifetime 1
execute as @e[scores={lifetime=..0}] run data merge entity @s {DeathTime:19s,Health:0.0f}

# Store Location
execute as @a[gamemode=adventure] run function skills:internal/store_location


# Remove Beam
execute as @e[tag=hole,type=minecraft:armor_stand] run function main:game/remove_beam

# tnt
kill @e[type=tnt]
