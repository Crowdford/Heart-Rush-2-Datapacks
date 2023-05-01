scoreboard players set @s carrotID 0
scoreboard players set @s carrotType -1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set @s carrotType 0
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set @s carrotType 1
execute if score @s carrotType matches 0 store result score @s carrotID run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s carrotType matches 1 store result score @s carrotID run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if score @s carrotType matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s carrotType matches 1 run item replace entity @s weapon.offhand with air

# Jump Crystal
execute if score @s carrotID matches 2 run scoreboard players set id effectstack 8
execute if score @s carrotID matches 2 run scoreboard players set amplifier effectstack 2
execute if score @s carrotID matches 2 run scoreboard players set duration effectstack 600
execute if score @s carrotID matches 2 run scoreboard players set sid effectstack 1
execute if score @s carrotID matches 2 run function effectstack:effect
execute if score @s carrotID matches 2 at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 1 1.5

# Speed Crystal
execute if score @s carrotID matches 4 run scoreboard players set id effectstack 1
execute if score @s carrotID matches 4 run scoreboard players set amplifier effectstack 2
execute if score @s carrotID matches 4 run scoreboard players set duration effectstack 600
execute if score @s carrotID matches 4 run scoreboard players set sid effectstack 1
execute if score @s carrotID matches 4 run function effectstack:effect
execute if score @s carrotID matches 4 at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 1 1.5

# Persistence Crystal
execute if score @s carrotID matches 3 run scoreboard players set id effectstack 26
execute if score @s carrotID matches 3 run scoreboard players set amplifier effectstack 0
execute if score @s carrotID matches 3 run scoreboard players set duration effectstack 300
execute if score @s carrotID matches 3 run scoreboard players set sid effectstack 1
execute if score @s carrotID matches 3 run function effectstack:effect
execute if score @s carrotID matches 3 at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 1 1.5

# Creeper Charge
execute if score @s carrotID matches 7 at @s run function main:game/item/creeper_charge

# Forcefield
execute if score @s carrotID matches 8 at @s run function main:game/item/forcefield_use