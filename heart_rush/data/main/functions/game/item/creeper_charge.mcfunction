tag @s add creeperCharge
scoreboard players set @s deathLType 102
effect give @s instant_damage 1 0 true
execute if score timer Stats matches 14000.. run function health:force_death/creeper_charge
execute unless block ~ ~-2 ~ air run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:5}
execute if block ~ ~-2 ~ air positioned ^ ^ ^-0.75 positioned ~ ~-1 ~ run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:5}
scoreboard players add @s chargeUses 1

tag @s add dealtDmgExplosion

function main:game/item/explosion