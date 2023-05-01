# Get Item
data modify block 0 0 0 Items set value []
data modify storage sbc:main temp set from entity @s Inventory[{tag:{custom:"melee"}}]
data modify storage sbc:main temp.Slot set value 0
data modify block 0 0 0 Items append from storage sbc:main temp
data modify block 0 0 0 Items[0].tag.Unbreakable set value 0

# First
execute if score @s customCooldown = @s maxCustomC run data modify block 0 0 0 Items[0].tag.storedEnchantments set from block 0 0 0 Items[0].tag.Enchantments
execute if score @s customCooldown = @s maxCustomC run data modify block 0 0 0 Items[0].tag.storedAttributeModifiers set from block 0 0 0 Items[0].tag.AttributeModifiers

# Remove Knockback
data modify block 0 0 0 Items[0].tag.Enchantments set value []
data modify block 0 0 0 Items[0].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;0,19429,0,147907]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;0,42535,0,187133]}]

# Get New Damage
scoreboard players operation damage Temp = @s customCooldown
scoreboard players operation damage Temp *= 100 Const
scoreboard players operation damage Temp /= @s maxCustomC
scoreboard players operation damage Temp *= @s cooldownDura
scoreboard players operation damage Temp /= 100 Const
execute store result block 0 0 0 Items[0].tag.Damage int 1 run scoreboard players get damage Temp

# Cooldown Complete
scoreboard players remove @s customCooldown 1
execute if score @s customCooldown matches 0 run data modify block 0 0 0 Items[0].tag.Unbreakable set value 1
execute if score @s customCooldown matches 0 run data modify block 0 0 0 Items[0].tag.Enchantments set from block 0 0 0 Items[0].tag.storedEnchantments
execute if score @s customCooldown matches 0 run data modify block 0 0 0 Items[0].tag.AttributeModifiers set from block 0 0 0 Items[0].tag.storedAttributeModifiers

# Set Item
execute store result score slot Temp run data get entity @s Inventory[{tag:{custom:"melee"}}].Slot
function main:game/equipment/cooldown_replace

