scoreboard players set attempt shield 0
scoreboard players set over shield 0
function main:shield/attempt
tellraw @a {"score":{"name":"length","objective":"shield"}}

scoreboard players operation overX shield = length shield
execute if score length shield matches 17.. run scoreboard players operation over shield = overX shield
execute if score length shield matches 17.. run scoreboard players remove over shield 16
execute if score length shield matches 17.. run scoreboard players set attempt shield 1
execute if score length shield matches 17.. run function main:shield/attempt
tellraw @a {"score":{"name":"length","objective":"shield"}}

execute if score length shield matches 17.. run scoreboard players operation over shield = overX shield
execute if score length shield matches 17.. run scoreboard players remove over shield 16
execute if score length shield matches 17.. run scoreboard players set attempt shield 2
execute if score length shield matches 17.. run function main:shield/attempt
tellraw @a {"score":{"name":"length","objective":"shield"}}

execute if score length shield matches 17.. run scoreboard players operation over shield = overX shield
execute if score length shield matches 17.. run scoreboard players remove over shield 16
execute if score length shield matches 17.. run scoreboard players set attempt shield 3
execute if score length shield matches 17.. run function main:shield/attempt
tellraw @a {"score":{"name":"length","objective":"shield"}}

data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:shield",Count:1s,tag:{BlockEntityTag:{Base:0,Patterns:[]}}}]
data modify block 0 0 0 Items[0].tag.BlockEntityTag.Patterns append from storage sbc:shield patterns[]
loot replace entity @s weapon.mainhand 1 mine 0 0 0