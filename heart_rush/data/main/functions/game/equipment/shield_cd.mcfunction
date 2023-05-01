# Get Item
data modify block 0 0 0 Items set value []
data modify storage sbc:main temp set from entity @s Inventory[{tag:{custom:"shield"}}]
data modify storage sbc:main temp.Slot set value 0
data modify block 0 0 0 Items append from storage sbc:main temp
data modify block 0 0 0 Items[0].tag.Unbreakable set value 0

# Remove Shield
data modify block 0 0 0 Items[0].id set value "netherite_hoe"
data modify block 0 0 0 Items[0].tag.CustomModelData set from block 0 0 0 Items[0].tag.storedCustomModelData

# Get New Damage
scoreboard players operation damage Temp = @s shieldCooldown
scoreboard players operation damage Temp *= 100 Const
scoreboard players operation damage Temp /= @s shieldMaxC
scoreboard players operation damage Temp *= 2031 Const
scoreboard players operation damage Temp /= 100 Const
execute store result block 0 0 0 Items[0].tag.Damage int 1 run scoreboard players get damage Temp

# Cooldown Complete
scoreboard players remove @s shieldCooldown 1
execute if score @s shieldCooldown matches 0 run execute at @s run function #skills:events/player/shield/regained
execute if score @s shieldCooldown matches 0 run data modify block 0 0 0 Items[0].id set value "shield"
execute if score @s shieldCooldown matches 0 run data modify block 0 0 0 Items[0].tag.Unbreakable set value 1

# Set Item
execute store result score slot Temp run data get entity @s Inventory[{tag:{custom:"shield"}}].Slot
function main:game/equipment/cooldown_replace

